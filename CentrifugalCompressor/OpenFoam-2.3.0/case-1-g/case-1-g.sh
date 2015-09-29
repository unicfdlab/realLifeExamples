#PBS -l walltime=240:00:00,nodes=2:ppn=12

cd /unicluster/home/matvey.kraposhin/Work/pisoCentralFoam/pisoCentralFoam-cases/Compressor/case-1-g

rm -rf log

decomposePar -cellDist | tee -a log

mpirun -np 24 -machinefile $PBS_NODEFILE pisoCentralDyMFoam -parallel | tee -a log
#mpirun -np 12 -machinefile $PBS_NODEFILE pimpleDyMFoam -parallel | tee -a log

