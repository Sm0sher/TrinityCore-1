# MoshPit local deployment

The custom auth migration renames Normal realm 70 to MoshPit and sets the offline
flag on realms 71 (PvP), 72 (RP), and 73 (Hardcore). Their rows and character data
are retained. Region 70 and the client build 70862 are unchanged.
Set `Realm.HideOfflineSubRegions = 1` in bnetserver.conf as well: offline rows
otherwise still create region-dropdown entries even though their ruleset cards
are hidden. The option defaults to off for existing deployments.

The hotfix migration changes Cfg_Regions record 1160 to MoshPit, including ruRU,
and publishes its hotfix record. The client receives and caches this value only
after connecting to worldserver.

Known limitation: build 70862 still displays its built-in Beta region label on
the pre-world gameplay-type selector. The world hotfix does not override that
screen, including after restarting the client. A loose DBFilesClient override
was also ignored and has been removed. Do not claim the login label is fixed.

Validation: migrations applied successfully; realm 70 is online and the other
three rows are offline; the client offers only Normal and reaches the existing
character list. The launcher is configured locally with one MoshPit entry.
