#!/bin/bash


EICSHELL=./eic-shell


CONDOR_DIR=condorSim
OUT_DIR=output

mkdir ${CONDOR_DIR}
mkdir "${CONDOR_DIR}/${OUT_DIR}"

## Pass commands to eic-shell
#${EICSHELL} <<EOF

## Set environment
source /opt/detector/setup.sh

#export LOCAL_PREFIX=/gpfs02/eic/lkosarzew/Calorimetry/nHcalDev
#source ${LOCAL_PREFIX}/epic/install/setup.sh
#export DETECTOR_PATH=/gpfs02/eic/lkosarzew/Calorimetry/nHcalDev/epic/install/share/epic

## Export detector libraries
#export LD_LIBRARY_PATH=${LOCAL_PREFIX}/epic/install/lib:$LD_LIBRARY_PATH

## Set geometry and events to simulate
DETECTOR_CONFIG=epic_calorimeters
N_EVENTS=10

# Set seed based on date
SEED=$(date +%N)
#echo $SEED

npsim --compactFile ${DETECTOR_PATH}/${DETECTOR_CONFIG}.xml --numberOfEvents ${N_EVENTS} --random.seed ${SEED} --enableGun \
	--gun.particle pi+ --gun.thetaMin 130*degree --gun.thetaMax 177*degree --gun.distribution uniform \
	--gun.energy 10*GeV --outputFile ${1}
	
exit

#EOF
