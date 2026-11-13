"""Reusable, isolated worldserver verification. Requires PyMySQL; never runs SQL on production."""
from __future__ import annotations

import argparse
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import re
import secrets
import socket
import subprocess
import tempfile
import time

import pymysql
from pymysql.constants import CLIENT

PREFIX = "wow_batch_70888_"
DATABASES = ("auth", "characters", "world", "hotfixes")
AUTH_DATA = {"realmlist", "build_info", "rbac_permissions", "rbac_linked_permissions", "rbac_default_permissions"}


def ident(value):
    if not re.fullmatch(r"[A-Za-z_][A-Za-z_0-9]*", value):
        raise ValueError("Invalid SQL identifier")
    return "`" + value + "`"


def execute(connection, statement, params=None):
    with connection.cursor() as cursor:
        cursor.execute(statement, params)
        rows = cursor.fetchall() if cursor.description else ()
        while cursor.nextset():
            if cursor.description:
                cursor.fetchall()
        return rows


def messages(path):
    return Counter(line.strip() for line in path.read_bytes().splitlines() if line.strip())


def rewrite_sql(text):
    # Leave string literals and comments intact. Permissions provide the isolation boundary.
    quoted = r"('(?:[^'\\]|\\.|'')*'|\"(?:[^\"\\]|\\.|\"\")*\"|--[^\n]*|\#[^\n]*|/\*.*?\*/)"
    chunks = re.split(quoted, text, flags=re.S)
    for i in range(0, len(chunks), 2):
        if re.search(r"\bUSE\s+", chunks[i], re.I):
            raise ValueError("Trial SQL must not contain USE; select the database in the package")
        chunks[i] = re.sub(r"\b(auth|characters|world|hotfixes)\s*\.",
                           lambda m: ident(PREFIX + m[1]) + ".", chunks[i])
        chunks[i] = re.sub(r"`(auth|characters|world|hotfixes)`\s*\.",
                           lambda m: ident(PREFIX + m[1]) + ".", chunks[i])
    return "".join(chunks)


class Fixture:
    def __init__(self, args):
        self.args = args
        self.state_dir = args.state.resolve()
        self.state_dir.mkdir(parents=True, exist_ok=True)
        self.state_file = self.state_dir / "fixture.json"
        self.state = json.loads(self.state_file.read_text()) if self.state_file.exists() else {}
        self.raw = (args.server / "worldserver.conf").read_text(encoding="utf-8-sig")
        cfg = re.search(r'^LoginDatabaseInfo\s*=\s*"([^"]+)"', self.raw, re.M).group(1).split(";")
        self.credentials = dict(host=cfg[0], port=int(cfg[1]), user=cfg[2], password=cfg[3],
                                charset="utf8mb4", autocommit=True, read_timeout=240,
                                client_flag=CLIENT.MULTI_STATEMENTS)
        self.admin = self.connect()

    def connect(self, user=None, password=None, database=None):
        cfg = dict(self.credentials)
        if user:
            cfg.update(user=user, password=password)
        if database:
            cfg["database"] = database
        connection = pymysql.connect(**cfg)
        if not user:
            # Administrative copies and snapshots belong only to the disposable fixture.
            # Keep bulk test data out of the production server's binary logs.
            execute(connection, "SET SESSION sql_log_bin=0")
        return connection

    def save(self):
        temporary = self.state_file.with_suffix(".tmp")
        temporary.write_text(json.dumps(self.state, indent=2), encoding="utf-8")
        temporary.replace(self.state_file)

    def reset_sessions(self):
        for source in ("auth", "characters"):
            dest = ident(PREFIX + source)
            names = execute(self.admin, "SELECT table_name FROM information_schema.tables WHERE table_schema=%s", (PREFIX + source,))
            for (name,) in names:
                execute(self.admin, f"DELETE FROM {dest}.{ident(name)}")
                if source == "auth" and name in AUTH_DATA or source == "characters" and name == "pool_quest_save":
                    execute(self.admin, f"INSERT INTO {dest}.{ident(name)} SELECT * FROM {ident(source)}.{ident(name)}")
        execute(self.admin, f"UPDATE {ident(PREFIX+'auth')}.realmlist SET port=18085 WHERE id=70")

    def recover(self):
        for database, table in self.state.get("pending", []):
            target = ident(PREFIX + database) + "." + ident(table)
            backup = ident(PREFIX + "undo") + "." + ident(database + "_" + table)
            execute(self.admin, f"TRUNCATE TABLE {target}; INSERT INTO {target} SELECT * FROM {backup}")
            assert execute(self.admin, f"SELECT COUNT(*) FROM {target}")[0][0] == execute(self.admin, f"SELECT COUNT(*) FROM {backup}")[0][0]
        self.state.pop("pending", None)
        self.save()

    def ensure(self, baseline):
        self.recover()
        sentinel = execute(self.admin, "SELECT (SELECT COUNT(*) FROM world.creature_template),"
                           "(SELECT COUNT(*) FROM world.quest_template),(SELECT COUNT(*) FROM world.creature),"
                           "(SELECT COUNT(*) FROM hotfixes.hotfix_data),(SELECT COALESCE(MAX(Id),0) FROM hotfixes.hotfix_data)")[0]
        data_dir = Path(re.search(r'^DataDir\s*=\s*"([^"]+)"', self.raw, re.M).group(1))
        if not data_dir.is_absolute():
            data_dir = self.args.server / data_dir
        dbc = sorted((str(p.relative_to(data_dir)), p.stat().st_size, p.stat().st_mtime_ns) for p in (data_dir / "dbc").rglob("*.db2"))
        signature = dict(log_sha256=hashlib.sha256(baseline.read_bytes()).hexdigest(), sentinel=list(sentinel), build=70888,
                         binary_sha256=hashlib.sha256(self.args.worldserver.read_bytes()).hexdigest(),
                         dbc_signature=hashlib.sha256(repr(dbc).encode()).hexdigest())
        rebuilt = self.args.refresh or signature != self.state.get("signature")
        if rebuilt:
            def copy(source):
                connection = self.connect()
                try:
                    dest = ident(PREFIX + source)
                    execute(connection, f"DROP DATABASE IF EXISTS {dest}; CREATE DATABASE {dest} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci")
                    names = execute(connection, "SELECT table_name FROM information_schema.tables WHERE table_schema=%s AND table_type='BASE TABLE'", (source,))
                    for (name,) in names:
                        target = dest + "." + ident(name)
                        execute(connection, f"CREATE TABLE {target} LIKE {ident(source)}.{ident(name)}")
                        if source in ("world", "hotfixes"):
                            execute(connection, f"INSERT INTO {target} SELECT * FROM {ident(source)}.{ident(name)}")
                    print("Prepared fixture:", source, len(names), "tables", flush=True)
                finally:
                    connection.close()
            with ThreadPoolExecutor(max_workers=3) as pool:
                list(pool.map(copy, DATABASES))
            self.state["signature"] = signature
            self.save()
        execute(self.admin, f"CREATE DATABASE IF NOT EXISTS {ident(PREFIX+'undo')}")
        self.reset_sessions()
        return rebuilt

    def snapshot(self, tables):
        pending = []
        for database, table in tables:
            if database not in ("world", "hotfixes"):
                continue
            target = ident(PREFIX + database) + "." + ident(table)
            backup = ident(PREFIX + "undo") + "." + ident(database + "_" + table)
            execute(self.admin, f"DROP TABLE IF EXISTS {backup}; CREATE TABLE {backup} LIKE {target}; INSERT INTO {backup} SELECT * FROM {target}")
            pending.append((database, table))
        self.state["pending"] = pending
        self.save()

    def users(self, tables):
        password = secrets.token_urlsafe(30)
        for user in ("forever_batch_sql", "forever_batch_core"):
            account = "'" + user + "'@'127.0.0.1'"
            execute(self.admin, f"CREATE USER IF NOT EXISTS {account} IDENTIFIED BY %s", (password,))
            execute(self.admin, f"ALTER USER {account} IDENTIFIED BY %s", (password,))
            execute(self.admin, f"REVOKE ALL PRIVILEGES, GRANT OPTION FROM {account}")
            for database in DATABASES:
                privileges = "ALL" if user.endswith("core") else "SELECT, CREATE TEMPORARY TABLES"
                execute(self.admin, f"GRANT {privileges} ON {ident(PREFIX+database)}.* TO {account}")
            if user.endswith("sql"):
                for database, table in tables:
                    execute(self.admin, f"GRANT INSERT, UPDATE, DELETE ON {ident(PREFIX+database)}.{ident(table)} TO {account}")
            connection = self.connect(user, password)
            try:
                try:
                    execute(connection, "UPDATE world.creature_template SET entry=entry WHERE 1=0")
                except pymysql.err.OperationalError as error:
                    if error.args[0] not in (1142, 1143):
                        raise
                else:
                    raise AssertionError("Fixture user unexpectedly has production write privileges")
            finally:
                connection.close()
        return password

    def checksums(self, tables):
        return {database + "." + table: execute(self.admin, f"CHECKSUM TABLE {ident(PREFIX+database)}.{ident(table)} EXTENDED")[0][1]
                for database, table in tables}

    def run(self, package, package_path):
        if not re.fullmatch(r"[A-Za-z0-9_-]+", package["name"]):
            raise ValueError("Invalid package name")
        baseline = Path(package["baseline_log"])
        start = time.monotonic()
        rebuilt = self.ensure(baseline)
        tables = sorted({tuple(t.split(".")) for t in package.get("tables", [])})
        for database, table in tables:
            if database not in DATABASES:
                raise ValueError("Unknown package database")
            ident(table)
        self.snapshot(tables)
        password = self.users(tables)
        process = None
        try:
            def apply():
                for entry in package.get("files", []):
                    if entry["database"] not in DATABASES:
                        raise ValueError("Unknown SQL database")
                    file = (package_path.parent / entry["path"]).resolve()
                    text = rewrite_sql(file.read_text(encoding="utf-8-sig"))
                    connection = self.connect("forever_batch_sql", password, PREFIX + entry["database"])
                    try:
                        execute(connection, text)
                    finally:
                        connection.close()
            apply()
            once = self.checksums(tables)
            apply()
            if once != self.checksums(tables):
                raise AssertionError("Package is not idempotent")
            logs = self.state_dir / "runs" / (time.strftime("%Y%m%d-%H%M%S") + "-" + package["name"])
            logs.mkdir(parents=True, exist_ok=False)
            raw = self.raw
            def change(key, value):
                nonlocal raw
                raw, n = re.subn(r"^" + re.escape(key) + r"\s*=.*$", lambda m: key + " = " + value, raw, flags=re.M)
                assert n == 1, key
            for key, database in {"Login": "auth", "Character": "characters", "World": "world", "Hotfix": "hotfixes"}.items():
                cfg = re.search(r'^' + key + r'DatabaseInfo\s*=\s*"([^"]+)"', raw, re.M).group(1).split(";")
                assert cfg[4] == database
                cfg[2:5] = ["forever_batch_core", password, PREFIX + database]
                change(key + "DatabaseInfo", '"' + ";".join(cfg) + '"')
            for key, value in {"WorldServerPort": "18085", "Console.Enable": "0", "Updates.EnableDatabases": "0", "LogsDir": '"' + logs.as_posix() + '"'}.items():
                change(key, value)
            with tempfile.TemporaryDirectory(prefix="forever-fixture-") as temp:
                config = Path(temp) / "worldserver.conf"
                config.write_text(raw, encoding="utf-8")
                process = subprocess.Popen([str(self.args.worldserver), "-c", str(config)], cwd=self.args.server,
                                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
                                           creationflags=subprocess.CREATE_NO_WINDOW if os.name == "nt" else 0)
                deadline = time.monotonic() + 90
                while time.monotonic() < deadline:
                    text = (logs / "Server.log").read_bytes() if (logs / "Server.log").exists() else b""
                    if b"World initialized in" in text and b"(worldserver-daemon) ready" in text:
                        with socket.create_connection(("127.0.0.1", 18085), timeout=2):
                            pass
                        break
                    if process.poll() is not None:
                        raise RuntimeError("Fixture worldserver exited; inspect " + str(logs))
                    time.sleep(.3)
                else:
                    raise RuntimeError("Fixture boot timed out: " + str(logs))
                process.terminate()
                process.wait(timeout=15)
                process = None
            old, new = messages(baseline), messages(logs / "DBErrors.log")
            added = new - old
            counts = {m[2]: int(m[1]) for m in re.finditer(r"^>> Loaded ([0-9]+) (.+?) in [0-9]+ ms", text.decode("utf-8", "replace"), re.M)}
            for key, expected in package.get("expected_counts", {}).items():
                assert counts.get(key) == expected, (key, counts.get(key), expected)
            result = dict(before=sum(old.values()), after=sum(new.values()), new={k.decode("utf-8", "replace"): v for k, v in added.items()},
                          fixture_rebuilt=rebuilt, seconds=round(time.monotonic()-start, 2), tables=len(tables), accepted=counts,
                          package_sha256=hashlib.sha256(package_path.read_bytes()).hexdigest(), logs=str(logs))
            (logs / "result.json").write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
            (self.state_dir / "latest-result.json").write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
            print(json.dumps({k: v for k, v in result.items() if k != "accepted"}, ensure_ascii=False), flush=True)
            assert not added, "New warnings in fixture"
        finally:
            if process and process.poll() is None:
                process.terminate()
                process.wait(timeout=15)
            self.recover()
            self.reset_sessions()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("package", type=Path)
    parser.add_argument("--server", type=Path, required=True)
    parser.add_argument("--worldserver", type=Path, required=True)
    parser.add_argument("--state", type=Path, required=True)
    parser.add_argument("--refresh", action="store_true", help="Rebuild the fixture after external/manual database changes")
    args = parser.parse_args()
    args.server, args.worldserver = args.server.resolve(), args.worldserver.resolve()
    args.state.mkdir(parents=True, exist_ok=True)
    with (args.state / "fixture.lock").open("a+b") as lock:
        lock.seek(0)
        if not lock.read(1):
            lock.write(b"0")
            lock.flush()
        lock.seek(0)
        if os.name == "nt":
            import msvcrt
            msvcrt.locking(lock.fileno(), msvcrt.LK_NBLCK, 1)
        else:
            import fcntl
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        fixture = Fixture(args)
        try:
            fixture.run(json.loads(args.package.read_text(encoding="utf-8-sig")), args.package.resolve())
        finally:
            fixture.admin.close()


if __name__ == "__main__":
    main()
