#!/bin/bash

for i in `cat lista.txt`; 
do 
	sbatch --error=logs/${i}.error.log --output=logs/${i}.output.log -p ipq teste.sh ${i};
done
