Doctomantation from the tab ```Using GPUs``` in the  (Gaussian site)[http://gaussian.com/running/?tabid=5]

## Create sbatch

## Using GPU


The important part of this output is the CPU affinity. This example shows that GPUs 0 and 1 (on the first K80 card) are connected to the CPUs on chip 0 while GPUs 2-7 (on the other two K80 cards) are connected to the CPUs on chip 1.

Specifying GPUs & Control CPUs for a Gaussian Job
The GPUs to use for a calculation and their controlling CPUs are specified with the %GPUCPU Link 0 command. This command takes one parameter:
```
%GPUCPU=gpu-list=control-cpus
```
where gpu-list is a comma-separated list of GPU numbers, possibly including numerical ranges (e.g., 0-4,6), and control-cpus is a similarly-formatted list of controlling CPU numbers. The corresponding items in the two lists are the GPU and its controlling CPU.

For example, on a 32-processor system with 6 GPUs, a job which uses all the CPUs—26 CPUs serving solely as compute nodes and 6 CPUs used for controlling GPUs—would use the following Link 0 commands:
```
%CPU=0-31                                
%GPUCPU=0,1,2,3,4,5=0,1,16,17,18,19
```

These command state that CPUs 0-31 will be used in the job. GPUs 0 through 5 will be used, with GPU0 controlled by CPU 0, GPU1 controlled by CPU 1, GPU2 controlled by CPU 16, GPU3 controlled by CPU 17, and so on. Note that the controlling CPUs are included in %CPU.

In the preceding example, the GPU and CPU lists could be expressed more tersely as:
```
%CPU=0-31
%GPUCPU=0-5=0-1,16-19
```
Normally one uses consecutive processors in the obvious way, but things can be associated differently in special cases. For example, suppose the same machine already had a job using 6 CPUs, running with %CPU=16-21. Then, in order to use the other 26 CPUs with 6 controlling GPUs, you would specify:

```
%CPU=0-15,22-31
%GPUCPU=0-5=0-1,22-25
```
This job would use a total of 26 processors, employing 20 of them solely for computation, along with the six GPUs controlled by CPUs 0, 1, 22, 23, 24 and 25 (respectively).

In [REV B], the lists of CPUs and GPUs are both sorted and then matched up. This ensures that the the lowest numbered threads are executed on CPUs that have GPUs. Doing so ensures that if a part of a calculation has to reduce the number of processors used (i.e., because of memory limitations), it will preferentially use/retain the threads with GPUs (since it removes threads in reverse order).


