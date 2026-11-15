"""Experimental loose-file copy of the 70938 native UI sources.

Downloads only pinned, hash-checked Blizzard UI source. Does not patch Wow.exe,
change security settings, install a separate helper addon or grant collectibles.
The tested 70938 client ignores these copies. This is not a working installer
for that client; patch() is also used to prepare offline CASC experiments.
"""
import argparse
import hashlib
import json
from pathlib import Path
import urllib.request


COMMIT = "bebcb6bf309cf41b41bd74f8ca651e6a105b2676"


def patch(name, data):
    text = data.decode("utf-8").replace("\r\n", "\n")
    if name.endswith("Blizzard_EncounterJournal.toc"):
        text = "## Interface: 16001\n" + text
        text = text.replace("## AllowLoadGameType: standard, classic",
                            "## AllowLoadGameType: standard, classic, camelot")
        text = text.replace("[AllowLoadGameType cata, mists, mainline]",
                            "[AllowLoadGameType cata, mists, mainline, camelot]")
        text = text.replace("[AllowLoadGameType mainline]",
                            "[AllowLoadGameType mainline, camelot]")
        text = text.replace("[Family]\\", "Mainline\\")
    elif name.endswith("Blizzard_Collections.toc"):
        text = "## Interface: 16001\n" + text
        text = text.replace("## AllowLoadGameType: wrath, cata, mists, mainline",
                            "## AllowLoadGameType: wrath, cata, mists, mainline, camelot")
    elif name.endswith("Camelot/Blizzard_Wardrobe.lua"):
        first = text.index("\t-- In Camelot")
        last = text.index("\tCreateSourceFilters(rootDescription);", first)
        replacement = """\trootDescription:CreateCheckbox(COLLECTED, C_TransmogCollection.GetCollectedShown, function()
\t\tC_TransmogCollection.SetCollectedShown(not C_TransmogCollection.GetCollectedShown());
\tend);
\trootDescription:CreateCheckbox(NOT_COLLECTED, C_TransmogCollection.GetUncollectedShown, function()
\t\tC_TransmogCollection.SetUncollectedShown(not C_TransmogCollection.GetUncollectedShown());
\tend);
\trootDescription:CreateDivider();
"""
        text = text[:first] + replacement + text[last:]
    else:
        return data
    return text.encode("utf-8")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--client", required=True, type=Path, help="The _forever_ directory")
    parser.add_argument("--cache", required=True, type=Path)
    parser.add_argument("--experimental-loose-files", action="store_true",
                        help="Allow the ineffective-on-tested-70938 loose-file experiment")
    args = parser.parse_args()
    if not args.experimental_loose_files:
        parser.error("The tested 70938 client ignores loose native UI replacements; "
                     "this experimental installer is disabled by default")
    client = args.client.resolve()
    if not (client / "Wow.exe").is_file():
        parser.error("--client must contain Wow.exe")
    manifest = json.loads(Path(__file__).with_name("native-ui-files.json").read_text(encoding="utf-8"))
    assert manifest["source_commit"] == COMMIT
    modules = {Path(row["path"]).parts[2] for row in manifest["files"]}
    for module in modules:
        if (client / "Interface" / "AddOns" / module).exists():
            parser.error(f"Existing {module}: preserve or inspect it before installing")
    prepared = []
    for row in manifest["files"]:
        name = row["path"]
        relative = Path(name)
        if relative.is_absolute() or ".." in relative.parts or relative.parts[:2] != ("Interface", "AddOns"):
            raise ValueError(f"Invalid manifest path: {name}")
        cached = args.cache / relative
        data = cached.read_bytes() if cached.is_file() else b""
        if hashlib.sha256(data).hexdigest() != row["upstream_sha256"]:
            url = f"https://raw.githubusercontent.com/Gethe/wow-ui-source/{COMMIT}/{name}"
            with urllib.request.urlopen(url, timeout=30) as response:
                data = response.read()
            if hashlib.sha256(data).hexdigest() != row["upstream_sha256"]:
                raise ValueError(f"Source hash mismatch: {name}")
            cached.parent.mkdir(parents=True, exist_ok=True)
            cached.write_bytes(data)
        prepared.append((relative, patch(name, data)))
    # Validate every download before creating any live module directory.
    for relative, data in prepared:
        target = client / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
    print(f"Installed {len(prepared)} native UI files for 70938; restart the client.")


if __name__ == "__main__":
    main()
