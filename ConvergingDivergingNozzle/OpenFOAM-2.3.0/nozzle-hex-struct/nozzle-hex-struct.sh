#PBS -l walltime=240:30:00,nodes=2:ppn=12

cd /unicluster/home/matvey.kraposhin/Work/pisoCentralFoam/pisoCentralFoam-cases/nozzle-hex-struct
rm -rf log
decomposePar | tee -a log

mpirun -np 24 -machinefile $PBS_NODEFILE pisoCentralFoam -parallel | tee -a log




