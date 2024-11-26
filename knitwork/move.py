
from pathlib import Path
from os import environ
import mrich
import shutil

bulk_root = environ["BULK"]

mrich.var("bulk_root", bulk_root)

assert bulk_root

bulk_root = Path(bulk_root)

for file in Path(".").glob("*/merges_*.csv"):
	new_file = bulk_root / "INPUTS" / f"RdRp_knitwork_{file.parent.name}_{file.name.removeprefix('merges_')}"
	mrich.print("copied:", file, new_file)
	shutil.copy(file, new_file)