# ePICcondorScripts

Basic scripts for running condor simulation and reconstruction jobs. To run do following steps.

## Prepare directories

```Sh
./mkdirCondor.sh
```

## Submit simulation jobs

```Sh
condor_submit submitSim.job | tee sim.log
```

## Submit reconstruction jobs (remember to adjust input!)

```Sh
condor_submit submitReco.job | tee reco.log
```