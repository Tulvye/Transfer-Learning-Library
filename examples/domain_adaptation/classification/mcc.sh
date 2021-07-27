#!/usr/bin/env bash
# Office31
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 -i 500 --seed 2 --bottleneck-dim 1024 --log logs/mcc/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 -i 500 --seed 2 --bottleneck-dim 1024 --log logs/mcc/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 -i 500 --seed 2 --bottleneck-dim 1024 --log logs/mcc/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 -i 500 --seed 2 --bottleneck-dim 1024 --log logs/mcc/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 -i 500 --seed 2 --bottleneck-dim 1024 --log logs/mcc/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 -i 500 --seed 2 --bottleneck-dim 1024 --log logs/mcc/Office31_W2A

# Office-Home
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Ar -t Pr -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Ar2Pr
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Cl -t Ar -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Cl2Ar
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Cl -t Rw -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Cl2Rw
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Pr -t Cl -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Pr2Cl
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Rw -t Ar -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Rw2Ar
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Rw2Cl
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Rw -t Pr -a resnet50 --epochs 30 --seed 0 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Rw2Pr

# VisDA-2017
CUDA_VISIBLE_DEVICES=0 python mcc.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 30 --seed 0 --lr 0.002 --per-class-eval --temperature 3.0 --center-crop --log logs/mcc/VisDA2017
    
# Wilds Dataset
CUDA_VISIBLE_DEVICES=0 python mcc.py data/wilds -d iwildcam -a resnet50 --bottleneck-dim 2048 --epochs 30 -i 1000 --seed 0 --log logs/mcc/iwildcam
CUDA_VISIBLE_DEVICES=0 python mcc.py data/wilds -d fmow -a resnet50 --bottleneck-dim 2048 --epochs 30 -i 1000 --seed 0 --log logs/mcc/fmow

# Office-Home on Vision Transformer
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Ar -t Cl -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Ar -t Pr -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Ar2Pr
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Ar -t Rw -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Cl -t Ar -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Cl2Ar
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Cl -t Pr -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Cl -t Rw -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Cl2Rw
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Pr -t Ar -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Pr -t Cl -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Pr2Cl
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Pr -t Rw -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Rw -t Ar -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Rw2Ar
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Rw -t Cl -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Rw2Cl
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office-home -d OfficeHome -s Rw -t Pr -a vit_base_patch16_224 --no-pool --bottleneck-dim 2048 --epochs 30 --seed 0 -b 24 --log logs/mcc_vit/OfficeHome_Rw2Pr
