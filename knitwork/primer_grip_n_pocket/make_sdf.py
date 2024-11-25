
import pandas as pd
from rdkit.Chem import MolFromSmiles
from rdkit.Chem.PandasTools import WriteSDF
import json
from pathlib import Path
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

		merge_name = f'{merge_name}_{out_dir.removesuffix('_output')}'

		data = json.load(open(json_file,'rt'))

		for series in data.values():

			logger.var(f'{merge_name} #expansions:', len(series['expansions']))

			for i, (smiles, cmpd_ids) in enumerate(zip(series['expansions'], series['cmpd_ids'])):

				alias = f'{merge_name}-{i:03}'

				merge = dict(name=alias, smiles=smiles, mol=MolFromSmiles(smiles), cmpd_ids=cmpd_ids, pure=pure)

				all_merges.append(merge)

	df = pd.DataFrame(all_merges)

	logger.success(f'{len(df)} total merges')

	if pure:
		logger.writing('merges_pure.sdf')
		WriteSDF(df, out='merges_pure.sdf', molColName='mol', idName='name', properties=df.columns)
	else:
		logger.writing('merges_impure.sdf')
		WriteSDF(df, out='merges_impure.sdf', molColName='mol', idName='name', properties=df.columns)
