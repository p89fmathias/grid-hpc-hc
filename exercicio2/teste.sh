#!/bin/bash

#SBATCH --error=/mnt/equallogic/teste/exercicio2/error.log         # arquivo com as msgs de erro padrao
#SBATCH --output=/mnt/equallogic/teste/exercicio2/output.log	# arquivo com as msgs de saida padrao
#SBATCH --open-mode=append                              # modo de inclusao das msgs de log

sleep 5

echo `hostname`


