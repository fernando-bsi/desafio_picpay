Performance API Tests - Testes automatizados de carga e performance da Api "jsonplaceholder"
=============================================================================================

Projeto para execução de testes automatizados de carga e performance, que medem o volume de transações suportadas pela API
[jsonplaceholder](https://jsonplaceholder.typicode.com/)


Stacks
------

 - [Python](https://pip.pypa.io/en/stable/installing/)
 - [Locust](https://docs.locust.io/en/stable/installation.html)


Configurações para desenvolvedores
----------------------------------

 - Instalar Python - (https://pip.pypa.io/en/stable/installing/)
 - Instalar Locust (versão 0.13.5) - (https://docs.locust.io/en/stable/installation.html)


Como rodar localmente
---------------------

  - Pré requisito: A aplicação (API a ser testada) deve estar rodando localmente (localhost)
 Visualização WEB
  - Subir locust: $ locust -f [arquivo_teste.py] --host=http://localhost:8081
  - Acessar http://127.0.0.1:8089/ no navegador para inserir parametros


Executar pelo terminal
----------------------
 - Criar a variável de ambiente:
    - virtualenv --python='/usr/bin/python3.8' .env
 - Acessar o ambiente:    
    - source .env/bin/activate
 - Chamar os cenários:
    - Deverá ser realizado a chamada do locust apontando para o arquivo.py, segue abaixo o exemplo:
    - locust -f common.py --host="hhttps://jsonplaceholder.typicode.com"
