# PBS to SLURM

## User Commands

| User Commands        | PBS/Torque	          | Slurm                          |
|----------------------|----------------------|--------------------------------|
| Job submission	     | qsub [script_file]   |	sbatch [script_file]           |
| Job deletion	       | qdel [job_id]	      | scancel [job_id]               |
| Job status (by job)  | qstat [job_id]	      | squeue [job_id]                |
| Job status (by user) | qstat -u [user_name] |	squeue -u [user_name]          |
| Job hold	           | qhold [job_id]	      | scontrol hold [job_id]         |
| Job release	         | qrls [job_id]	      | scontrol release [job_id]      |
| Queue list	         | qstat -Q	            | squeue                         |
| Node list	           | pbsnodes -l          | sinfo -N OR scontrol show nodes|
| Cluster status	     | qstat -a	            | sinfo                          |


## Environment		

| Environment       |	PBS/Torque     | Slurm                 |
|-------------------|----------------|-----------------------|
| Job ID	          | $PBS_JOBID	   | $SLURM_JOBID          |
| Submit Directory  |	$PBS_O_WORKDIR | $SLURM_SUBMIT_DIR     |
| Submit Host	      | $PBS_O_HOST    | $SLURM_SUBMIT_HOST    |
| Node List	        | $PBS_NODEFILE	 | $SLURM_JOB_NODELIST   |
| Q	                | $PBS_ARRAYID	 | $SLURM_ARRAY_TASK_ID  |


## Job Specifications		

| Job Specification	     | PBS/Torque	                                 | Slurm                                                 |
|------------------------|---------------------------------------------|-------------------------------------------------------|
| Script directive       | #PBS	                                       | #SBATCH                                               |
| Queue/Partition	       | -q [name]	                                 | -p [name] *Best to let Slurm pick the optimal partition |
| Node Count	           | -l nodes=[count]	                           | -N [min[-max]] *Autocalculates this if just task # is given  |
| Total Task Count	     | -l ppn=[count] OR -l mppwidth=[PE_count]	   | -n OR --ntasks=ntasks |
| Wall Clock Limit	     | -l walltime=[hh:mm:ss]	                     | -t [min] OR -t [days-hh:mm:ss] |
| Standard Output File	 | -o [file_name]	                             | -o [file_name] |
| Standard Error File	   | -e [file_name]	                             | -e [file_name] |
| Combine stdout/err	   | -j oe (both to stdout) OR -j eo (both to stderr) | (use -o without -e) |
| Copy Environment	     | -V	                                         | --export=[ALL | NONE | variables] |
| Event Notification	   | -m abe	                                     | --mail-type=[events] |
| Email Address	         | -M [address]	                               | --mail-user=[address] |
| Job Name	             | -N [name]	                                 | --job-name=[name] |
| Job Restart	           | -r [y | n]	                                 | --requeue OR --no-requeue |
| Resource Sharing	     | -l naccesspolicy=singlejob	                 | --exclusive OR --shared |
| Memory Size	           | -l mem=[MB]	                               | --mem=[mem][M | G | T] OR --mem-per-cpu=[mem][M | G | T]  |
| Accounts to charge	   | -A OR -W group_list=[account]	             | --account=[account] OR -A |
| Tasks Per Node	       | -l mppnppn [PEs_per_node]	                 | --ntasks-per-node=[count] |
| CPUs Per Task		       |                                             | --cpus-per-task=[count] |
| Job Dependency	       | -d [job_id]	                               | --depend=[state:job_id] |
| Quality of Service	   | -l qos=[name]	                             | --qos=[normal | high] |
| Job Arrays	           | -t [array_spec]	                           | --array=[array_spec] |
| Generic Resources	     | -l other=[resource_spec]	                   | --gres=[resource_spec] |
| Job Enqueue Time	     | -a “YYYY-MM-DD HH:MM:SS”	                   | --begin=YYYY-MM-DD[THH:MM[:SS]] |
