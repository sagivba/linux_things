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
