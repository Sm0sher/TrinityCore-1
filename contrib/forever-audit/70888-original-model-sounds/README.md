# Original creature appearances and sound metadata for Forever 70888

This optional migration restores default appearance selection for 74 templates. It imports 82 model bindings, 66 displays with their combat geometry, 35 model records, and the supporting sound metadata. The sound rows keep the source values and use the client’s existing footstep groups where applicable. The audio files were read to completion from the installed client with the ruRU and enUS locale masks. The manifest lists unavailable zero-weight appearances for callers that explicitly select them.

The migration is for the matching 70888 world and hotfix database state after the earlier model packages. With worldserver stopped, verify that its template bindings, display and model records, sound IDs, blob records, and push range are free. Apply 01-hotfix.sql to hotfixes and 02-world.sql to world in a single InnoDB transaction. A deployment wrapper can omit the individual transaction markers. Use restore.sql to reverse this package before reverting earlier model packages.

The isolated database test applied the package twice and started worldserver successfully. The production startup recorded 5,916 messages, down from 5,990, with no new diagnostics. The restored models and audio were not checked in the game world.
