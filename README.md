# GRID-HPC-HC

Este repositório contém uma documentação básica de uso do GRID de HPC do HC.

## Grupos do HC atendidos

  * Medicina Nuclear
  * Psysbio - Instituto de Psiquiatria

## Estrutura

### Processamento

| Nó de processamento | CPU                                   | # cores | Memória RAM (GB) |
| ------------------- | ------------------------------------- | ------- | ---------------- |
| node01              | Intel(R) Xeon(R) CPU E5530  @ 2.40GHz | 16      | 64               |
| node02              | Intel(R) Xeon(R) CPU E5506  @ 2.13GHz | 8       | 16               |
| node03              | AMD Opteron(TM) Processor 6234        | 24      | 32               |
| node04              | Intel(R) Xeon(R) CPU X5675  @ 3.07GHz | 24      | 64               |
| node05              | Intel(R) Xeon(R) CPU X5675  @ 3.07GHz | 24      | 24               |
| node06              | Intel(R) Xeon(R) CPU X5675  @ 3.07GHz | 24      | 64               |

### Armazenamento

Por padrão os storages ficam todos montados no diretório `/mnt` da headnode e nós de processamento.

| Storage             | Capacidade (TB) | Uso exclusivo |
| ------------------- | --------------- | ------------- |
| P2000               | 40              | Psysbio - IPq |
| Equallogic          | 15              | LIM43         |
| LIM100T             | 100             | n/a           |

## Conteúdo

  * [Primeiros Passos](basic/README.md) - primeiros passos
  * [Exercicio 1](exercicio1/README.md) - uso básico
  * [Exercicio 2](exercicio2/README.md) - gerenciando os logs do job
  * [Exercicio 3](exercicio3/README.md) - solicitando recursos (cpu e memoria)
  * [Exercicio 4](exercicio4/README.md) - solicitando funcionalidades personalizadas (não programáticos)
  * [Exercicio 5](exercicio5/README.md) - definindo a partição (fila) correta
  * [Exercicio 6](exercicio6/README.md) - criando uma lista de jobs e colocando na fila para processamento
  * Documentação
    * [SLURM: Comandos básicos](docs/slurm-basic-commands.md)
    * [SLURM para usuários PBS](docs/pbs-to-slurm.md)
    * [Conda: comandos básicos](docs/conda-basic-commands.md)
