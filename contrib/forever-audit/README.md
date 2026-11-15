# Forever database verification

Install PyMySQL and run the batch verifier with an existing Forever server configuration:

```powershell
python contrib/forever-audit/batch.py package.json --server D:/path/to/server --worldserver D:/path/to/worldserver.exe --state D:/path/to/fixture
```

The package JSON supplies a unique run name, a baseline DBErrors.log, the SQL files to try, and the tables those files may change. For example:

```json
{
  "name": "quest-data",
  "baseline_log": "D:/path/to/baseline-DBErrors.log",
  "tables": ["world.quest_template"],
  "files": [{"database": "world", "path": "trial.sql"}],
  "expected_counts": {"creatures": 79430}
}
```

Trial SQL runs twice with write permissions limited to declared tables in the test schemas. The verifier checks repeatability, starts worldserver on localhost port 18085, compares the resulting log with the baseline, and restores the touched tables. The first run copies world and hotfixes. Later runs reuse the copy while the baseline, executable, DB2 inputs, and database signature match. After manual database edits, supply a fresh startup log and pass `--refresh`.

The verifier uses fixed schema names beginning with `wow_batch_70888_` on the same MySQL instance. Keep one state directory per MySQL instance. The production configuration is read for connection settings. The temporary worldserver configuration uses a test-only MySQL account. Test auth and characters schemas contain only startup metadata and the quest pool cache.

`catalog.py` indexes versioned Wago CSV exports already on disk by table, build, and locale. `Catalog.get()` reuses matching files and records their hashes.

`inactive_scopes.py` refines an existing C++ activation graph using `tree-sitter` and `tree-sitter-cpp`. Its `refine(facts, repo, out, query)` function reads script bindings with a SELECT-only query callback and writes `inactive-spell-proof.json`; it does not modify the database. It removes only numeric references confined to unbound lazy script classes or their private implementation constants. Active bindings, external class references, startup work in wrapper constructors, included implementation files and opaque numeric representations remain protected. Unknown registration forms are retained.

Run its scope safety checks with `python contrib/forever-audit/check_inactive_scopes.py`. This refinement is evidence for selecting candidates, not a deletion tool. Recheck bindings and source fingerprints before applying any separately reviewed SQL, preserve original rows, and verify the package with the batch runner.
