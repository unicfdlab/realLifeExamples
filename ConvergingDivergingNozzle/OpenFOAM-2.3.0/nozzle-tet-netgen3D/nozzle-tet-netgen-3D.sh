#PBS -l walltime=240:30:00,nodes=5:ppn=12

cd /unicluster/home/matvey.kraposhin/Work/pisoCentralFoam/pisoCentralFoam-cases/nozzle-tet-netgen3D
rm -rf log
decomposePar | tee -a log

mpirun -np 60 -machinefile $PBS_NODEFILE pisoCentralFoam -parallel | tee -a log




