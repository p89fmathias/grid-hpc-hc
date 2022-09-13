#!/bin/bash

#SBATCH --error=/mnt/equallogic/teste/error.log         # arquivo com as msgs de erro padrao
#SBATCH --output=/mnt/equallogic/teste/output.log	# arquivo com as msgs de saida padrao
#SBATCH --open-mode=append                              # modo de inclusao das msgs de log

#SBATCH --mem=1024MB                                    # quantidade de memoria alocada
#SBATCH --cpus-per-task=2                               # numero de cpus por task
#SBATCH --batch=haswell					# solicitar a feature haskell

sleep 15

echo `hostname`


