
import pandas as pd
import json
from pathlib import Path
from FragmentKnitwork.utils.quilterUtils import split_fragment_pair_string
from mlog import setup_logger
logger = setup_logger('make_sdf')

dir_suffix_pure_triples = [
	('knitwork_pure_output', '_pure_merge.json', True),
	('knitwork_impure_output', '_prop_pharmfp_impure_merge.json', False),
]

for out_dir, suffix, pure in dir_suffix_pure_triples:

	all_merges = []

	for json_file in Path(out_dir).glob(f'*{suffix}'):

		merge_name = json_file.name.removesuffix(suffix)

		hit_names = split_fragment_pair_string(merge_name)
		#hit_names = merge_name.split("-")

		data = json.load(open(json_file,'rt'))

		for series in data.values():

			logger.var(f'{merge_name} #expansions:', len(series['expansions']))

			for i, (smiles, cmpd_ids) in enumerate(zip(series['expansions'], series['cmpd_ids'])):

				merge = dict(smiles=smiles)

				for j,hit in enumerate(hit_names):
					merge[j] = hit

				all_merges.append(merge)

	df = pd.DataFrame(all_merges)

	logger.success(f'{len(df)} total merges')

	if pure:
		logger.writing('merges_pure.csv')
		df.to_csv("merges_pure.csv", index=False)
	else:
		logger.writing('merges_impure.csv')
		df.to_csv("merges_impure.csv", index=False)
