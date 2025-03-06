#!/bin/bash

set -e

KEY=$1

echo $MANIFOLD_API_KEY

echo --input $(pwd)/$KEY".csv"
echo --hits_path $(pwd)/"mar_elabs_syndirella_inspiration_hits.sdf"
echo --output $(pwd)/$KEY
echo --metadata "/opt/xchem-fragalysis-2/maxwin/RdRp_FFF/syndirella/elabs/metadata.csv"
echo --templates "$(pwd)/templates"

/opt/xchem-fragalysis-2/maxwin/conda/bin/syndirella \
	--input $(pwd)/$KEY".csv" \
	--hits_path $(pwd)/"mar_elabs_syndirella_inspiration_hits.sdf" \
	--output $(pwd)/$KEY \
	--metadata "/opt/xchem-fragalysis-2/maxwin/RdRp_FFF/syndirella/elabs/metadata.csv" \
	--templates "$(pwd)/templates" \
	--no_scaffold_place

# sb.sh --job-name syndirella $HOME2/slurm/run_bash_with_conda.sh ./run_elaboration.sh

