"""Index versioned DB2 CSV files without downloading or hashing them repeatedly."""
from pathlib import Path
import csv
import hashlib
import json
import re
import urllib.request


class Catalog:
    def __init__(self, root, state):
        self.root, self.state = Path(root), Path(state)
        self.state.mkdir(parents=True, exist_ok=True)
        self.file = self.state / "catalog.json"
        self.records = json.loads(self.file.read_text(encoding="utf-8")) if self.file.exists() else {}

    def scan(self):
        pattern = re.compile(r"^(?:wago-)?(?P<table>[A-Za-z][A-Za-z_0-9]*)-(?P<build>\d+\.\d+\.\d+\.\d+|70888|70862)(?:-(?P<locale>[a-z]{2}[A-Z]{2}))?\.csv$")
        for path in self.root.rglob("*.csv"):
            match = pattern.fullmatch(path.name)
            if not match:
                continue
            build = match["build"]
            if build in ("70888", "70862"):
                build = "1.60.1." + build
            stat = path.stat()
            key = match["table"] + "/" + build + "/" + (match["locale"] or "enUS")
            previous = next((r for r in self.records.get(key, []) if r["path"] == str(path)), {})
            record = dict(path=str(path), size=stat.st_size, mtime_ns=stat.st_mtime_ns)
            if previous.get("size") == stat.st_size and previous.get("mtime_ns") == stat.st_mtime_ns and "sha256" in previous:
                record["sha256"] = previous["sha256"]
            self.records.setdefault(key, [])
            self.records[key] = [r for r in self.records[key] if r["path"] != str(path)] + [record]
        self.save()

    def save(self):
        self.file.write_text(json.dumps(self.records, ensure_ascii=False, indent=2), encoding="utf-8")

    def get(self, table, build="1.60.1.70888", locale="enUS", download=False):
        if not re.fullmatch(r"[A-Za-z][A-Za-z_0-9]*", table) or not re.fullmatch(r"\d+\.\d+\.\d+\.\d+", build) or not re.fullmatch(r"[a-z]{2}[A-Z]{2}", locale):
            raise ValueError("Invalid DB2 source key")
        key = table + "/" + build + "/" + locale
        candidates = [r for r in self.records.get(key, []) if Path(r["path"]).is_file()]
        candidates.sort(key=lambda r: ("build-70888-20261111" not in r["path"], "content-repair-20261109" not in r["path"], r["path"]))
        if not candidates:
            if not download:
                raise FileNotFoundError(key)
            request = urllib.request.Request(f"https://wago.tools/db2/{table}/csv?build={build}&locale={locale}", headers={"User-Agent": "Mozilla/5.0"})
            with urllib.request.urlopen(request, timeout=30) as response:
                data = response.read()
            target = self.state / f"{table}-{build}-{locale}.csv"
            target.write_bytes(data)
            with target.open(encoding="utf-8-sig", newline="") as stream:
                if "ID" not in next(csv.reader(stream)):
                    target.unlink()
                    raise ValueError("Response is not a DB2 CSV")
            stat = target.stat()
            record = dict(path=str(target), size=stat.st_size, mtime_ns=stat.st_mtime_ns)
            self.records.setdefault(key, []).append(record)
        else:
            record = candidates[0]
        path = Path(record["path"])
        stat = path.stat()
        if record.get("mtime_ns") != stat.st_mtime_ns or record.get("size") != stat.st_size or "sha256" not in record:
            record.update(size=stat.st_size, mtime_ns=stat.st_mtime_ns, sha256=hashlib.sha256(path.read_bytes()).hexdigest())
            self.save()
        return path
