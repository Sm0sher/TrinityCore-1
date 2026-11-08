#!/usr/bin/env python3
"""Quarantine world references skipped by one verified WoW Forever 70862 boot."""

import argparse
from pathlib import Path
import re
import subprocess
import tempfile


# Table, columns identifying the rejected row, regex in the same column order, protected parent.
REFERENCES = (
    ("creature_template_model", ("CreatureID", "CreatureDisplayID"),
     rb"Creature \(Entry: (\d+)\) lists non-existing CreatureDisplayID id \((\d+)\),",
     "keep_creature"),
    ("creature_model_info", ("DisplayID",),
     rb"Table \x60creature_model_info\x60 has a non-existent DisplayID \(ID: (\d+)\)\. Skipped\.",
     "keep_display"),
    ("creature_questitem", ("ItemId", "CreatureEntry", "DifficultyID", "Idx"),
     rb"Table \x60creature_questitem\x60 has nonexistent item \(ID: (\d+)\) in creature \(entry: (\d+), difficulty: (-?\d+), idx: (\d+)\), skipped",
     "keep_creature"),
    ("gameobject_questitem", ("ItemId", "GameObjectEntry", "Idx"),
     rb"Table \x60gameobject_questitem\x60 has nonexistent item \(ID: (\d+)\) in gameobject \(entry: (\d+), idx: (\d+)\), skipped",
     "keep_gameobject"),
    ("creature_quest_currency", ("CurrencyId", "CreatureId"),
     rb"Table \x60creature_quest_currency\x60 has nonexistent currency \(ID: (-?\d+)\) in creature \(entry: (\d+), currency: -?\d+\), skipped",
     "keep_creature"),
)
PARENT_COLUMN = {
    "creature_template_model": "CreatureID",
    "creature_model_info": "DisplayID",
    "creature_questitem": "CreatureEntry",
    "gameobject_questitem": "GameObjectEntry",
    "creature_quest_currency": "CreatureId",
}
PRIMARY_KEYS = {
    "creature_template_model": ("CreatureID", "Idx"),
    "creature_model_info": ("DisplayID",),
    "creature_questitem": ("CreatureEntry", "DifficultyID", "Idx"),
    "gameobject_questitem": ("GameObjectEntry", "Idx"),
    "creature_quest_currency": ("CreatureId", "CurrencyId"),
}

PROTECTED = """
CREATE TEMPORARY TABLE keep_creature (id INT UNSIGNED PRIMARY KEY);
INSERT IGNORE INTO keep_creature SELECT id FROM creature;
INSERT IGNORE INTO keep_creature SELECT entry FROM creature_summon_groups;
INSERT IGNORE INTO keep_creature SELECT entry FROM creature_classic_stats;
INSERT IGNORE INTO keep_creature SELECT id FROM creature_queststarter;
INSERT IGNORE INTO keep_creature SELECT id FROM creature_questender;
INSERT IGNORE INTO keep_creature SELECT summonerId FROM creature_summon_groups WHERE summonerType = 0;
INSERT IGNORE INTO keep_creature SELECT entry FROM creature_template WHERE ScriptName <> '';
INSERT IGNORE INTO keep_creature SELECT entryorguid FROM smart_scripts WHERE source_type = 0 AND entryorguid > 0;
INSERT IGNORE INTO keep_creature SELECT action_param1 FROM smart_scripts WHERE action_type IN (3,12,36,43) AND action_param1 > 0;
INSERT IGNORE INTO keep_creature SELECT target_param1 FROM smart_scripts WHERE target_type IN (9,11) AND target_param1 > 0;
INSERT IGNORE INTO keep_creature SELECT target_param2 FROM smart_scripts WHERE target_type = 10 AND target_param2 > 0;
INSERT IGNORE INTO keep_creature SELECT ObjectID FROM quest_objectives WHERE Type IN (0,3) AND ObjectID > 0;
INSERT IGNORE INTO keep_creature SELECT datalong FROM event_scripts WHERE command = 10 AND datalong > 0;

CREATE TEMPORARY TABLE keep_gameobject (id INT UNSIGNED PRIMARY KEY);
INSERT IGNORE INTO keep_gameobject SELECT id FROM gameobject;
INSERT IGNORE INTO keep_gameobject SELECT id FROM gameobject_queststarter;
INSERT IGNORE INTO keep_gameobject SELECT id FROM gameobject_questender;
INSERT IGNORE INTO keep_gameobject SELECT entry FROM gameobject_template WHERE ScriptName <> '';
INSERT IGNORE INTO keep_gameobject SELECT entryorguid FROM smart_scripts WHERE source_type = 1 AND entryorguid > 0;
INSERT IGNORE INTO keep_gameobject SELECT action_param1 FROM smart_scripts WHERE action_type = 50 AND action_param1 > 0;
INSERT IGNORE INTO keep_gameobject SELECT ObjectID FROM quest_objectives WHERE Type = 2 AND ObjectID > 0;

CREATE TEMPORARY TABLE keep_display (id INT UNSIGNED PRIMARY KEY);
INSERT IGNORE INTO keep_display
    SELECT m.CreatureDisplayID FROM creature_template_model m JOIN keep_creature p ON p.id = m.CreatureID;
INSERT IGNORE INTO keep_display SELECT modelid FROM creature WHERE modelid > 0;
INSERT IGNORE INTO keep_display
    SELECT action_param2 FROM smart_scripts WHERE action_type IN (3,43) AND action_param1 = 0 AND action_param2 > 0;
"""


def identifier(value):
    if not re.fullmatch(r"[A-Za-z][A-Za-z0-9_]{0,63}", value):
        raise argparse.ArgumentTypeError("expected a MySQL schema name")
    return value


def quote_identifier(value):
    return chr(96) + value + chr(96)


def read_boot(path):
    lines = (path.parent / "Server.log").read_bytes()
    if lines.count(b"World initialized in") != 1:
        raise ValueError("expected Server.log from one completed startup next to DBErrors.log")
    patterns = re.compile(b"(?:" + b")|(?:".join(entry[2] for entry in REFERENCES) + b")")
    rows = [set() for _ in REFERENCES]
    # Each pattern has a unique final capturing group in the combined regex.
    group_index = {}
    end = 0
    for i, (_, cols, _, _) in enumerate(REFERENCES):
        end += len(cols)
        group_index[end] = (i, len(cols))
    with path.open("rb") as log:
        for line in log:
            match = patterns.search(line)
            if match:
                index, count = group_index[match.lastindex]
                values = match.groups()[match.lastindex - count:match.lastindex]
                rows[index].add(tuple(int(value) for value in values))
    if not any(rows):
        raise ValueError("no supported warnings found in the completed boot log")
    return rows


def stage_sql(query, rows):
    for (table, columns, _, _), keys in zip(REFERENCES, rows):
        stage = "bad_" + table
        cols = ", ".join(map(quote_identifier, columns))
        defs = ", ".join(quote_identifier(c) + " BIGINT NOT NULL" for c in columns)
        query.write(f"CREATE TEMPORARY TABLE {stage} ({defs}, PRIMARY KEY ({cols}));\n")
        batch = []
        for key in sorted(keys):
            batch.append("(" + ",".join(map(str, key)) + ")")
            if len(batch) == 2000:
                query.write(f"INSERT INTO {stage} VALUES " + ",".join(batch) + ";\n")
                batch.clear()
        if batch:
            query.write(f"INSERT INTO {stage} VALUES " + ",".join(batch) + ";\n")
    query.write(PROTECTED)


def write_plan(query, archive):
    for table, cols, _, protected in REFERENCES:
        match = " AND ".join(f"t.{quote_identifier(c)} = b.{quote_identifier(c)}" for c in cols)
        source = (
            f"FROM {table} t JOIN bad_{table} b ON {match} "
            f"LEFT JOIN {protected} p ON p.id = t.{PARENT_COLUMN[table]}"
        )
        query.write(f"SELECT '{table}', COUNT(*), COUNT(p.id), COUNT(*) - COUNT(p.id) {source};\n")
    if archive is None:
        return

    archive = quote_identifier(archive)
    query.write(f"CREATE DATABASE {archive};\n")
    for table, *_ in REFERENCES:
        query.write(f"CREATE TABLE {archive}.{table} LIKE {table};\n")
    query.write("SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;\nSTART TRANSACTION;\n")
    for table, cols, _, protected in REFERENCES:
        match = " AND ".join(f"t.{quote_identifier(c)} = b.{quote_identifier(c)}" for c in cols)
        query.write(
            f"INSERT INTO {archive}.{table} SELECT t.* FROM {table} t "
            f"JOIN bad_{table} b ON {match} "
            f"LEFT JOIN {protected} p ON p.id = t.{PARENT_COLUMN[table]} WHERE p.id IS NULL;\n"
        )
        # The INSERT ... SELECT holds source row locks under the default repeatable read isolation.
        primary_key = ", ".join(map(quote_identifier, PRIMARY_KEYS[table]))
        query.write(f"DELETE t FROM {table} t JOIN {archive}.{table} b USING ({primary_key});\n")
        query.write(f"SELECT '{table}', ROW_COUNT();\n")
    query.write("COMMIT;\n")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--db-errors", type=Path, required=True)
    parser.add_argument("--mysql", default="mysql")
    parser.add_argument("--defaults-file", type=Path, required=True)
    parser.add_argument("--world", type=identifier, default="world")
    parser.add_argument("--auth", type=identifier, default="auth")
    parser.add_argument("--archive", type=identifier, help="apply changes and store rows in a new schema; omit for preview")
    args = parser.parse_args()
    if args.archive and not args.archive.startswith("wow70862_quarantine_"):
        parser.error("--archive must begin with wow70862_quarantine_")
    if args.archive in (args.auth, args.world):
        parser.error("the quarantine must be a separate schema")

    mysql = [
        args.mysql, "--defaults-file=" + str(args.defaults_file.resolve(strict=True)),
        "--batch", "--skip-column-names", "--default-character-set=utf8mb4",
        "--database=" + args.world,
    ]
    active = subprocess.check_output(
        mysql,
        input=f"SELECT DISTINCT gamebuild FROM {quote_identifier(args.auth)}.realmlist WHERE (flag & 2) = 0;\n",
        text=True,
    ).split()
    if active != ["70862"]:
        parser.error("expected all online realms to use build 70862")

    rows = read_boot(args.db_errors)
    print("table\tmatched\tprotected\tto_quarantine", flush=True)
    with tempfile.TemporaryFile(mode="w+", encoding="ascii", newline="\n") as query:
        stage_sql(query, rows)
        write_plan(query, args.archive)
        query.seek(0)
        subprocess.run(mysql, stdin=query, check=True)
    if args.archive:
        print(f"Archived removed rows in {args.archive}.")


if __name__ == "__main__":
    main()
