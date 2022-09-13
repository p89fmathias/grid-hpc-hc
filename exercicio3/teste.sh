#!/bin/bash

#SBATCH --error=/mnt/equallogic/teste/exercicio3/error.log         # arquivo com as msgs de erro padrao
#SBATCH --output=/mnt/equallogic/teste/exercicio3/output.log	# arquivo com as msgs de saida padrao
#SBATCH --open-mode=append                              # modo de inclusao das msgs de log

#SBATCH --mem=1G	                                # quantidade de memoria alocada
#SBATCH --cpus-per-task=1                               # numero de cpus por task

sleep 15

echo `hostname`


