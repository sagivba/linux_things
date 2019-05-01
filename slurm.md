# slurm
[slurm tutorial](https://slurm.schedmd.com/tutorials.html)

# sinfo 
View information about Slurm nodes and partitions.
## sinfo example:
```bash
[sagivba@gate ~]$ sinfo  
PARTITION AVAIL  TIMELIMIT  NODES  STATE NODELIST
debugnodes*  up   infinite      2   idle cn[01-02]
worknodes    up   infinite      1    mix cn11
worknodes    up   infinite      7  alloc cn[12-14,17-20]
worknodes    up   infinite     12   idle cn[01-10,15-16]
gpunodes     up   infinite      4   idle gpu[1-4]
```

# sbatch
Submit a batch script to Slurm.
For example if ```submit-pdb_prep-trimers.sh``` is a bash script, the following command will run it on partition ```worknodes``
## sbatch examples:
```bash
sbatch -p worknodes submit-pdb_prep-trimers.sh
```


# squeue
View information about jobs located in the Slurm scheduling queue.
## squeue examples:
```bash
squeue -u $USER       # squeue *my  jobs*
squeue -p  worknodes  # squeue * in partittion ''worknodes'*
```
## Tip for you:
* use ``` watch  squeue -u $USER ``` to monitor your queue
* create "profiles" for sbatch for example this is an exmple for nice template fo pdb_prep which use 30 cpu's parrally:
```
#SBATCH --job-name=pdb_prep
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=30
#SBATCH --mail-user=your@mail.here
```


# srun
Run parallel jobs
srun will first create a resource allocation in which to run the parallel job,  if it is necessary.
## usfule options:
```
-n, --ntasks=ntasks         number of tasks to run  
-p, --partition=partition   partition requested   
-c, --cpus-per-task=ncpus   number of cpus required per task 
-t, --time=minutes          time limit
--pty Execute task zero in pseudo terminal mode. 
       Implicitly sets: --unbuffered. --error and --output to /dev/null for all tasks except task zero
       for example use --pty bash for shell
```
## srun Examples:
```bash
srun -p gpunodes -n 16 -N 1 --pty bash
srun -p gpunodes -n 16 --pty bash
srun -p gpunodes -n 1 -c32 --pty bash
srun --partition=gpu --ntasks 1 --cpu-per-task=32 --pty bash
```

# scancel
Used to signal jobs or job steps that are under the control 

## scancel Examples:
```bash
scancel  63041                #  cancel job 63041
scancel  -u $USER -p worknode #  cancel *my jobs* om partittion 'worknode'
```

# sacct 
Displays accounting data for all jobs and job steps in the Slurm job accounting log or Slurm database
```
[sagivba@my ~]$ sacct -j 143922 -o Start,End
              Start                 End
------------------- -------------------
2019-05-01T11:29:07 2019-05-01T11:29:37
2019-05-01T11:29:07 2019-05-01T11:29:37
2019-05-01T11:29:07 2019-05-01T11:29:37

```
