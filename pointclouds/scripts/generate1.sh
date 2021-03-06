#! /bin/bash


cates="airplane"
test_std_n=0.00
test_std_z=1.0

python generate1.py \
    --cates ${cates} \
    --load_checkpoint results/${cates}/SoftPointFlow/checkpoint-best.pt \
    --te_max_sample_points 10000 \
    --tr_max_sample_points 10000 \
    --n_flow 12 \
    --multi_freq 4 \
    --n_flow_AF 9 \
    --h_dims_AF 256-256-256 \
    --test_std_n ${test_std_n} \
    --test_std_z ${test_std_z}
