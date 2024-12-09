#!/bin/bash

export MANIFOLD_API_KEY="v1:IEgBrU-Vi4r1bBTGidyEnA"

mkdir -pv output

syndirella \
	--input *_syndirella_input.csv \
	--output output \
	--hits_path *_syndirella_inspiration_hits.sdf \
	--just_retro
	# --metadata ../../Flavi_NS5_RdRp/metadata.csv \
	# --templates ../../Flavi_NS5_RdRp/aligned_files \

# sb.sh --job-name syndirella $HOME2/slurm/run_bash_with_conda.sh ./run_syndirella.sh