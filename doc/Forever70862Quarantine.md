# Quarantine skipped Forever 70862 references

Use the tool only with the logs from a fresh, completed worldserver startup using the target world database, current hotfixes and the client DB2 files for build 70862. Start with an empty log directory so `Server.log` and `DBErrors.log` cover the same run. Rerun the preview if you change the database or client data.

The tool selects five types of references that the loader already skips. It preserves references associated with spawns, named scripts, explicit SmartAI references, quest givers, quest objectives and Classic creature data. It does not infer every possible scripted spawn. Rows in the quarantine are retained in case they become useful for a later client build or content repair.

Run the preview with a local MySQL client option file containing connection settings.

```text
python contrib/maintenance/quarantine_forever_70862.py --defaults-file /path/to/mysql.cnf --db-errors /path/to/DBErrors.log
```

The preview lists matching rows, protected rows and rows eligible for quarantine. Add `--archive wow70862_quarantine_YYYYMMDD` to apply. The named schema must be new. The tool copies rows into that schema and removes those same primary keys from the world schema in one transaction. It checks that all online realms use build 70862. The optional `--world`, `--auth` and `--mysql` arguments select the database names and client executable.

Verify the result with another startup and compare the accepted model, quest item and quest currency counts. Startup warnings about templates with no valid model can remain. Those require a valid replacement model for playable creatures, or a separate decision about unused templates.

To restore a table, use an `INSERT INTO world.table_name SELECT * FROM wow70862_quarantine_YYYYMMDD.table_name` inside a transaction. Check for primary key conflicts before restoring across later updates. Keep the archive until the compatibility cleanup is no longer needed.
