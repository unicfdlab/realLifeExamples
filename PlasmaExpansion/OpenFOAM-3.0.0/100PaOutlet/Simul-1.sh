#PBS -l walltime=240:30:00,nodes=2:ppn=12

export CASE_DIR=unicluster/home/matvey.kraposhin/Work/pisoCentralFoam-Testing/Chirag/tutorial_tur_zeroGradient1

cd $CASE_DIR
rm -rf log

#decomposePar -force -cellDist | tee -a log


mpirun -np 12 -npernode 6 --bind-to-core --report-bindings -machinefile $PBS_NODEFILE pisoCentralFoam -parallel | tee -a log



