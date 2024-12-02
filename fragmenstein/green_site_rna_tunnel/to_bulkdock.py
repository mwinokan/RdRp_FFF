
from rich import print
import pandas as pd
from pathlib import Path

fstein_df = pd.read_csv("output.csv")

data = []

for i,row in fstein_df.iterrows():

	smiles = row.smiles
	inspirations = row.regarded.removeprefix("['").removesuffix("']").replace("'", "").split(",")

	if not isinstance(smiles, str):
		continue

	d = dict(smiles=smiles)

	for i, inspiration in enumerate(inspirations):
		d[f"hit{i}"] = inspiration.strip()

	data.append(d)

df = pd.DataFrame(data)

df.to_csv(Path(".").resolve().name + "_fstein_bulkdock_input.csv", index=False)
