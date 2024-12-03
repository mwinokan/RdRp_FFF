
from pathlib import Path
import molparse as mp
import mrich

for path in mrich.track(list(Path('../Flavi_NS5_RdRp/aligned_files').glob('*/*_apo-desolv.pdb'))):

    sys = mp.parse(path,verbosity=False)
    sys.add_hydrogens(pH=7)
    sys.write(str(path.resolve()).replace('_apo-desolv.pdb', '_apo-desolv-Hs.pdb'), verbosity=False)
