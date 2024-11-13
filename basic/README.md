# Primeiros passos 

- [1. Guia de Acesso ao Grid HPC via SSH](#1-guia-de-acesso-ao-grid-hpc-via-ssh)
  - [1.1. Acesso via Linux (Terminal SSH)](#11-acesso-via-linux-terminal-ssh)
  - [1.2. Acesso via Windows (Comando SSH)](#12-acesso-via-windows-comando-ssh)
  - [1.3. Acesso via PuTTY (Windows)](#13-acesso-via-putty-windows)
- [2. Uso do Grid HPC](#2-uso-do-grid-hpc)
  - [2.1. O Que é a Headnode?](#21-o-que-é-a-headnode)
    - [Por Que Não Podemos Rodar Análises na Headnode?](#por-que-não-podemos-rodar-análises-na-headnode)
  - [2.2. Usando o Slurm para Gerenciamento de Tarefas](#22-usando-o-slurm-para-gerenciamento-de-tarefas)
    - [O Que é o Slurm?](#o-que-é-o-slurm)
    - [Comandos Básicos do Slurm](#comandos-básicos-do-slurm)
  - [2.3. Utilizando o Conda para Gerenciamento de Pacotes e Ambientes no Grid HPC](#23-utilizando-o-conda-para-gerenciamento-de-pacotes-e-ambientes-no-grid-hpc)
    - [O Que é o Conda?](#o-que-é-o-conda)
    - [Comandos Essenciais para Gerenciamento de Ambientes no Conda](#comandos-essenciais-para-gerenciamento-de-ambientes-no-conda)
      - [1. Listar Ambientes Disponíveis](#1-listar-ambientes-disponíveis)
      - [2. Ativar um Ambiente Conda](#2-ativar-um-ambiente-conda)
      - [3. Desativar um Ambiente Conda](#3-desativar-um-ambiente-conda)

## 1. Guia de Acesso ao Grid HPC via SSH

Para acessar o grid HPC (IP: `10.65.125.73`), é necessário estar conectado à rede do Hospital das Clínicas (HC), pois o acesso é restrito a essa rede. Abaixo estão as instruções para acessar o servidor usando diferentes métodos, dependendo do sistema operacional e das ferramentas disponíveis.

### 1.1. Acesso via Linux (Terminal SSH)

A maioria das distribuições Linux possui o comando `ssh` instalado por padrão. Para conectar-se ao grid HPC, abra o terminal e execute o comando abaixo:

```bash
ssh <seu_usuario>@10.65.125.73
```

Substitua <seu_usuario> pelo seu nome de usuário no grid. Após isso, você será solicitado a fornecer a senha de acesso.

Observação: Este comando só funcionará se você estiver na rede do HC.

### 1.2. Acesso via Windows (Comando SSH)

A partir do Windows 10 versão 1803 e do Windows Server 2019, o sistema operacional inclui um cliente SSH nativo que pode ser usado diretamente no prompt de comando (cmd) ou no PowerShell.

 1. Abra o Prompt de Comando ou PowerShell.
 1. Execute o seguinte comando:
    ```powershell
    ssh <seu_usuario>@10.65.125.73
    ```

Substitua <seu_usuario> pelo seu nome de usuário no grid e forneça a senha quando solicitado.

### 1.3. Acesso via PuTTY (Windows)

O PuTTY é um cliente SSH popular para Windows. Se você está usando uma versão do Windows anterior à 10 versão 1803 ou prefere uma interface gráfica, siga os passos abaixo:

 1. Baixe o PuTTY no site oficial: https://www.putty.org/
 1. Abra o PuTTY e insira o IP do grid HPC no campo Host Name (or IP address):
    ```
    Host Name (or IP address): 10.65.125.73
    ```
 1. Verifique se a porta está configurada para 22 (padrão para SSH) e o tipo de conexão está definido como SSH.
 1. Clique em Open para iniciar a conexão.
 1. Insira seu nome de usuário e senha quando solicitado.

## 2. Uso do GridHPC

Ao acessar o grid HPC, você será direcionado automaticamente para uma máquina chamada **headnode**. Entender o papel da headnode e o uso do sistema de gerenciamento de tarefas é essencial para fazer o uso correto dos recursos de computação distribuída.

### 2.1 O Que é a Headnode?

A **headnode** é o nó principal de um cluster ou grid HPC e funciona como ponto de entrada para os usuários. A partir da headnode, é possível acessar o ambiente de trabalho, gerenciar arquivos, configurar análises e submeter tarefas para execução no grid. A headnode é projetada para tarefas administrativas e de controle de tarefas, não para execução de processos pesados.

#### Por Que Não Podemos Rodar Análises na Headnode?

A **headnode** não é adequada para execução de análises, pois:
1. **Recursos Limitados**: A headnode possui recursos limitados (CPU e memória) projetados para operações de gerenciamento e não para execução de cálculos complexos.
2. **Interferência no Funcionamento do Cluster**: Se usuários realizarem análises diretamente na headnode, isso pode sobrecarregar o sistema, afetando negativamente o desempenho de todos os usuários.
   
Por essas razões, recomenda-se que a headnode seja usada apenas para configurações iniciais e submissão de tarefas.

### 2.2 Usando o Slurm para Gerenciamento de Tarefas

Para rodar processos e análises no grid HPC, é necessário utilizar o **Slurm**.

#### O Que é o Slurm?

O **Slurm** (Simple Linux Utility for Resource Management) é um sistema de gerenciamento e agendamento de tarefas para clusters de computação. Ele permite que você:
- **Solicite recursos de processamento e memória** em nós de computação dedicados.
- **Submeta tarefas** para execução em segundo plano, sem a necessidade de manter uma conexão ativa.
- **Monitore o status** das suas tarefas, verificando tempo de execução, uso de recursos e outros detalhes.

Ao usar o Slurm, você pode garantir que as tarefas são distribuídas de maneira eficiente entre os nós disponíveis no cluster, maximizando o desempenho e garantindo que todos os usuários possam utilizar os recursos de forma justa.

#### Comandos Básicos do Slurm

Aqui estão alguns comandos básicos para começar com o Slurm:
- **`sbatch`**: Submete um script para execução.
- **`squeue`**: Exibe a lista de tarefas em execução ou na fila de espera.
- **`scancel`**: Cancela uma tarefa específica.

Esses comandos permitirão que você submeta e gerencie suas tarefas de forma adequada no cluster, evitando sobrecarregar a headnode e garantindo o uso correto dos recursos do grid HPC.

## 2.3 Utilizando o Conda para Gerenciamento de Pacotes e Ambientes no Grid HPC

O grid HPC utiliza o **Conda** como sistema de gerenciamento de pacotes e ambientes. O Conda facilita a instalação e manutenção de pacotes específicos para projetos de análise, garantindo que as dependências estejam corretas e permitindo criar ambientes isolados para cada aplicação ou análise.

### O Que é o Conda?

**Conda** é uma ferramenta de gerenciamento de pacotes e ambientes virtuais que facilita a instalação e atualização de bibliotecas e pacotes de software. Ele é amplamente utilizado em ambientes de pesquisa e ciência de dados, especialmente por permitir a criação de ambientes específicos para cada projeto.

Com Conda, você pode:
- **Gerenciar pacotes** de software para diferentes linguagens e frameworks.
- **Criar ambientes isolados** para evitar conflitos de dependências entre diferentes projetos.
- **Controlar versões de pacotes**, garantindo reprodutibilidade nas análises.

### Comandos Essenciais para Gerenciamento de Ambientes no Conda

#### 1. Listar Ambientes Disponíveis

Para ver a lista de ambientes Conda disponíveis no sistema, use o comando:

```bash
conda env list
```
ou
```bash
conda info --envs
```

Esses comandos mostrarão todos os ambientes instalados, incluindo seus respectivos diretórios. O ambiente ativo no momento estará marcado com um *.

#### 2. Ativar um Ambiente Conda

Para ativar um ambiente específico, use o seguinte comando:

```bash
conda activate nome_do_ambiente
```

Substitua nome_do_ambiente pelo nome do ambiente que você deseja ativar. Após ativar o ambiente, todos os pacotes e dependências específicos a ele estarão disponíveis.

#### 3. Desativar um Ambiente Conda

Para sair de um ambiente Conda e retornar ao ambiente base ou ao sistema, use:

```bash
conda deactivate
```
Isso desativa o ambiente atual, liberando-o da sessão e retornando ao ambiente padrão.

Esses comandos permitem que você gerencie e organize as dependências de seus projetos de forma eficiente, garantindo que cada projeto tenha o seu próprio ambiente controlado no grid HPC.