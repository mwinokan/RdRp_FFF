#!/bin/bash

for KEY in "elabs_"???".csv"; do
	KEY=${KEY:0:-4}
	echo $KEY

	sb.sh --job-name RdRp_syndirella_$KEY --ntasks=1 --cpus-per-task=1 --mem=3GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh $KEY

	# break

done

# sb.sh --job-name RdRp_syndirella_$KEY --ntasks=1 --cpus-per-task=1 --mem=3GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh $KEY

# sb.sh --job-name RdRp_syndirella_elabs_000 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_000
# sb.sh --job-name RdRp_syndirella_elabs_009 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_009
# sb.sh --job-name RdRp_syndirella_elabs_023 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_023
# sb.sh --job-name RdRp_syndirella_elabs_028 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_028
# sb.sh --job-name RdRp_syndirella_elabs_033 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_033
# sb.sh --job-name RdRp_syndirella_elabs_030 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_030
# sb.sh --job-name RdRp_syndirella_elabs_037 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_037
# sb.sh --job-name RdRp_syndirella_elabs_050 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_050
# sb.sh --job-name RdRp_syndirella_elabs_049 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_049
# sb.sh --job-name RdRp_syndirella_elabs_052 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_052
# sb.sh --job-name RdRp_syndirella_elabs_051 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_051
# sb.sh --job-name RdRp_syndirella_elabs_054 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_054
# sb.sh --job-name RdRp_syndirella_elabs_055 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_055
# sb.sh --job-name RdRp_syndirella_elabs_061 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_061
# sb.sh --job-name RdRp_syndirella_elabs_063 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_063
# sb.sh --job-name RdRp_syndirella_elabs_060 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_060
# sb.sh --job-name RdRp_syndirella_elabs_062 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_062
# sb.sh --job-name RdRp_syndirella_elabs_064 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_064
# sb.sh --job-name RdRp_syndirella_elabs_069 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_069
# sb.sh --job-name RdRp_syndirella_elabs_075 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_075
# sb.sh --job-name RdRp_syndirella_elabs_078 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_078
# sb.sh --job-name RdRp_syndirella_elabs_079 --ntasks=1 --cpus-per-task=1 --mem=10GB $HOME2/slurm/run_bash_with_conda.sh run_elaboration.sh elabs_079
