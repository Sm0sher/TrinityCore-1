# MoshPit local deployment

The custom auth migration renames Normal realm 70 to MoshPit and sets the offline
flag on realms 71 (PvP), 72 (RP), and 73 (Hardcore). Their rows and character data
are retained. The auth migration sets the Forever realms to client build 70938.
MoshPit uses region 70 and requires the 1.60.1.70938 client. Leave
`Realm.AlsoAcceptBuilds` empty to use the configured build for each realm.
Set `Realm.HideOfflineSubRegions = 1` in bnetserver.conf as well: offline rows
otherwise still create region-dropdown entries even though their ruleset cards
are hidden. The option defaults to off for existing deployments.

The hotfix migration changes Cfg_Regions record 1160 to MoshPit, including ruRU,
and publishes its hotfix record. The client receives and caches this value only
after connecting to worldserver.

Use server data extracted from the `wowf` product on build 70938. Restart both
`bnetserver` and `worldserver` after applying the auth migration.

Validation: migrations applied successfully; realm 70 is online and the other
three rows are offline; the client offers only Normal and reaches the existing
character list. The launcher is configured locally with one MoshPit entry.
