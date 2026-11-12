# Forever 1.60.1.70888 model dependencies

This optional package follows `70888-cdn-models`. It restores 128 original model bindings for 106 further templates after supplying their missing textures, animation files, skeletons and geometry.

Use the same client and database preflight described in the first package. Verify the 729 FileDataIDs in this package against the local CASC. These files correspond to 713 unique encoded keys. Apply the database patches with worldserver stopped after checking that the IDs are free. With the default schema names, use `restore.sql` to undo this package before rolling back the first package.

The client installation read all listed assets. The worldserver restart removed the 106 expected DBErrors messages and added none. In-world rendering still needs verification.
