# Original default creature appearances for Forever 70888

Optional state-specific migration for 173 previously model-less templates. Restores all original positive-weight appearances, preserving display IDs, scale, probability and combat geometry from source build 12.1.0.69497. Previously validated 70888 original display ports are reused. The package adds 181 bindings, 27 display/combat records, 15 model records and 42 hotfix registrations.

The unavailable zero-weight variants are listed in manifest.json. Default random selection is covered; alternate appearances requested explicitly by scripts or GM tools may still require those variants. If a source has only one row, its weight is ignored by the runtime; if all weights are zero, all variants are required. Those cases were included in the cohort eligibility check.

Model data that conflicts with a native numeric ID is placed at an unused custom model ID. Full M2 dependencies and required textures were checked in the installed 1.60.1.70888 client. Every imported reference resolves to a native record or an exact equivalent. Existing outfit dependencies must already be installed through the earlier 70888 model packages.

This is a manual migration for the matching fork/database state, outside the automatic SQL updater. Stop worldserver. Confirm all template IDs exist, have no current model bindings, the new display/model IDs are unoccupied, required reused displays and geometry exist, and the hotfix registration range is free. Apply 01-hotfix.sql to hotfixes and 02-world.sql to world as one transaction using a deployment wrapper that ignores the individual START/COMMIT markers. All touched tables must use InnoDB. Restart worldserver and check loading counts and new diagnostics.

Rollback: restore.sql, with worldserver stopped and no later overlapping changes. Back up before applying. The package does not contain the independent archival SQL for unreachable components from the same audit pass.

Validation: the recovery-only fixture reduced diagnostics from 6206 to 6033, with no new messages and successful repeated application. Client rendering in the game world was not visually verified.
