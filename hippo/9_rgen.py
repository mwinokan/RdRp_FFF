
import hippo
import mrich

animal = hippo.HIPPO("RdRp_FFF", "../../BulkDock/TARGETS/Flavi_NS5_RdRp/Flavi_NS5_RdRp.sqlite")

gen = hippo.RandomRecipeGenerator.from_json(db=animal.db, path="Flavi_NS5_RdRp_rgen.json")

for budget in [25_000, 30_000, 40_000]:

    for i in range(100):
        mrich.header("budget=", budget, "i=", i)
        
        try:
            r = gen.generate(
                budget=budget,
                currency="EUR",
                max_products=3000,
                max_reactions=6000,
                debug=False,
                max_iter=len(gen.route_pool)+1,
                shuffle=True,
                balance_clusters=True,
                permitted_clusters=None,
            )
        except Exception as e:
            mrich.error(e)
            continue

animal.db.close()

# sb.sh --job-name RdRp_rgen -pgpu --exclusive --no-requeue $HOME2/slurm/run_python.sh 9_rgen.py --dependency=afterany:352480
