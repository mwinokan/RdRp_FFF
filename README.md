# RdRp_FFF
Fast Forward Fragments campaign for NS5 RdRp (Zika + DENV2)

## Merging Hypotheses

- Cavity B [14 observations](https://fragalysis.diamond.ac.uk/viewer/react/projects/144/137)

- Green Site / RNA tunnel [48 observations](https://fragalysis.diamond.ac.uk/viewer/react/projects/140/133)

- Primer grip/N-pocket [30 observations](https://fragalysis.diamond.ac.uk/viewer/react/projects/141/134)

- Thumb site 2 [35 observations](https://fragalysis.diamond.ac.uk/viewer/react/projects/143/136)

### Algorithm output summary:

![newplot-86](https://github.com/user-attachments/assets/6513d2e0-a820-4a59-8b42-f2b18ea8dd2b)

![Screenshot 2024-12-19 at 10 35 02](https://github.com/user-attachments/assets/c35d6dc6-be68-4a60-97b9-b0687b76e6bf)


## [SLACK PLANNER](https://xchem-workspace.slack.com/lists/T01MX6021AR/F07SNQ7N7QD)

## Knitwork

- [x] cavity_b fragment (found 12 pairs)
- [x] green_site fragment (found 471 pairs)
- [x] primer_grip fragment (found 163 pairs)
- [x] thumb_site fragment (found 75 pairs)

- [x] cavity_b knitwork_pure (10 pairs, 131 merges)
- [x] green_site knitwork_pure (405 pairs, 66911 merges)
- [x] primer_grip knitwork_pure (110 pairs, 27904 merges)
- [x] thumb_site knitwork_pure (48 pairs, 4429 merges)

- [x] Protonate

- [x] cavity_b knitwork_impure (10 pairs, 694 merges)
- [x] green_site knitwork_impure (405 pairs, 80251 merges)
- [x] primer_grip knitwork_impure (110 pairs, 28629 merges)
- [x] thumb_site knitwork_impure (48 pairs, 6841 merges)

## Fragmenstein

- [x] cavity_b (165 merges, 13m)
- [x] primer_grip (596 merges, 3h20m)
- [x] thumb_site (873 merges, 4h)
- [x] green_site (1953 merges, 7h30m)

- [ ] Is 6izx-a ok as a reference? (ok because running BulkDock after anyway?)

## Manual Designs

- [x] No poses from Jasmin's first batch
- [x] Run using 6izx-a reference?
- [x] Waiting for new alignment to use 6ld2 reference for Jasmin's second batch

## BulkDock

- [x] Implement posebusters filtering

### Knitwork

- [x] cavity_b knitwork_pure (40 poses, 2 pass filters)
- [x] cavity_b knitwork_impure (514 poses, 20 pass filters)
- [x] primer_grip knitwork_pure (23721 poses, 169 pass filters)
- [x] primer_grip knitwork_impure (14822 poses, 123 pass filters)
- [x] thumb_site knitwork_pure (2535 poses, 88 pass filters)
- [x] thumb_site knitwork_impure (2897 poses, 285 pass filters)
- [x] green_site knitwork_pure (71383 poses, 505 pass filters)
- [x] green_site knitwork_impure (60288 poses, 484 pass filters) [upload]

### Fragmenstein

- [x] cavity_b fstein_pure (152 poses, 5 pass filters)
- [x] primer_grip fstein_pure (605 poses, 40 pass filters)
- [x] thumb_sdite fstein_pure (774 poses, 126 pass filters)
- [x] green_site fstein_pure (1749 poses, 55 pass fitlers)

### Manual

- [x] RdRp_Primergrip_JA_SeeSar (1 pose passes filters)
- [x] RdRp_RS_thumb_merges (1 pose passes filters)
- [x] RdRp_MW_d1212a_d0174a (no poses pass filters)
- [x] RdRp_MW_rahman_sw_mod (no poses)
- [ ] RdRp_Primergrip_JA_SeeSar_2 (running)
- [ ] Add all manual SeeSAR poses to DB

## Retrosynthesis

- [x] Fragmenstein
- [x] Knitwork
- [x] Knitwork green pure
- [ ] Knitwork green impure (pending)
- [x] JA SeeSar Manual designs
- [x] Parse into HIPPO reactions (non-BulkDock DB)
- [x] 364 product compounds so far
- [x] 341 fragalysis exported poses so far

## Filtering

- [ ] Posebutcher # atoms in solvent?
- [ ] Multi-SuCOS
- [ ] Num atoms added?

## Curation

- [ ] Review chemistry
- [ ] Select scaffolds

## Syndirella Elaboration

- [ ] Elaborations

# green_site_rna_tunnel_fstein_bulkdock_input_split1000_batch000 redo 217909

<!-- BulkDock.combine:Flavi_NS5_RdRp:green_site_rna_tunnel_fstein_bulkdock_input -->

sb.sh --job-name BulkDock.place:Flavi_NS5_RdRp:green_site_rna_tunnel_fstein_bulkdock_input_split1000_batch000 /opt/xchem-fragalysis-2/maxwin/slurm/run_python.sh -m bulkdock.batch place Flavi_NS5_RdRp /opt/xchem-fragalysis-2/maxwin/BulkDock/SCRATCH/Flavi_NS5_RdRp_inputs/green_site_rna_tunnel_fstein_bulkdock_input_split1000_batch000.csv

sb.sh --job-name BulkDock.combine:Flavi_NS5_RdRp:green_site_rna_tunnel_fstein_bulkdock_input -m bulkdock.batch combine INPUTS/green_site_rna_tunnel_fstein_bulkdock_input.csv

## rescue failed green site knitwork impure:
[217980, 217979, 217978, 217977, 217976, 217974, 217975, 217972, 217971, 217970, 217969, 217968, 217973, 217986, 217988, 217987, 217985]
