#!/bin/sh
CUDA_VISIBLE_DEVICES=0,1,2,3 \
python3 source_pretrain.py -ds dukemtmc -dt market1501 -a resnet50_base --seed 0 --margin 0.0 \
	--num-instances 4 -b 64 -j 4 --warmup-step 10 --lr 0.00035 --milestones 40 70 --iters 200 --epochs 80 \
	--eval-step 20 --logs-dir logs/dukemtmcTOmarket1501/resnet50_base-pretrain-0_norm