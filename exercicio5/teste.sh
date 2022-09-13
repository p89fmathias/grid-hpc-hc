#!/bin/bash

#SBATCH --mem=1024MB                                    # quantidade de memoria alocada
#SBATCH --cpus-per-task=1                               # numero de cpus por task

sleep 5

echo $1
