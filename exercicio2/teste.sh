#!/bin/bash

#SBATCH --error=exercicio2/error.log         # arquivo com as msgs de erro padrao
#SBATCH --output=exercicio2/output.log	# arquivo com as msgs de saida padrao
#SBATCH --open-mode=append                              # modo de inclusao das msgs de log

sleep 5

echo `hostname`
