#!/usr/bin/env bash
#/opt/data/private/nerf_mesh/Voxurf-main/configs/custom_e2e  scene_01 /opt/data/private/nerf_mesh/Voxurf-main/data/scene_01
CONFIG=$1
WORKDIR=$2
SCENE=$3

echo python run.py --config ${CONFIG}/coarse.py -p ${WORKDIR} --no_reload --run_dvgo_init --sdf_mode voxurf_coarse --scene ${SCENE}
python run.py --config ${CONFIG}/coarse.py -p ${WORKDIR} --no_reload --run_dvgo_init --sdf_mode voxurf_coarse --scene ${SCENE}

echo python run.py --config ${CONFIG}/fine.py --render_test -p ${WORKDIR} --no_reload --sdf_mode voxurf_fine --scene ${SCENE}
python run.py --config ${CONFIG}/fine.py --render_test -p ${WORKDIR} --no_reload --sdf_mode voxurf_fine --scene ${SCENE}

