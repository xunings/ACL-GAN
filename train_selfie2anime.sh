#!/usr/bin/env bash
usecuda100
export CUDA_VISIBLE_DEVICES=7
source /storage04/users/shaoxuning/.env/venv_py3.6_torch1.2/bin/activate
CONFIG=selfie2anime

mkdir -p ./outputs/"$CONFIG"

nohup python -u train.py --config configs/"$CONFIG".yaml --trainer aclgan > ./outputs/"$CONFIG"/train.out &
