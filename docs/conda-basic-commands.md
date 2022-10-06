# Comandos básicos Conda

## Listar ambientes

```bash
conda env list
```

## Ativação de ambiente

```bash
conda activate <ambiente>
```

## Criação de ambientes

### Ambiente padrão
```bash
conda create --name <ambiente>
```

### Ambiente com versão específica de Python

```bash
conda create -n <ambiente> python=3.9
```

### Ambiente com versão específica de Python e pacotes

```bash
conda create -n <ambiente> python=3.9 scipy=0.17.3 astroid babel
```

### Ambiente com arquivo pré-definido

```bash
conda env create -f environment.yml
```

## Instalação de pacotes

```bash
conda activate <ambiente>
conda install -c <canal> <pacote>
```
