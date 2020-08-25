# Script de automatização

## Estrutura

Neste repositório, pode ser encontrada a pasta *code*, onde estão os seguintes arquivos:

1. **ansible_hosts**: inventório do Ansible; estão declarados os hosts onde poderão ser feitas as tarefas descritas no playbook, além de como serão feitas as conexões com estes hosts.

2. **install_services.yml**: tarefas que serão executadas nos hosts; neste arquivo estão as tarefas de instalação do nginx e ElasticSearch, além da edição dos arquivos de configuração do ElasticSearch, permitindo que ele fique rodando na máquina alvo.

3. **elasticsearch** e **elasticsearch.yml**: arquivos de configuração do ElasticSearch, permitindo que seja possível iniciar automaticamente, além da configuração do host a partir do qual será possivel acessar o ElasticSearch.

4. **script.sh**: este arquivo contém a execução dos comandos para instalar o nginx e o ElasticSearch, além de verificar se os dois serviços estão sendo executados.

## Execução 

Para executar os comandos, dentro da pasta *code*, utilize o comando:

```
sh script.sh
```