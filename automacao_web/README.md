### PROJETO DE TESTES - automacao_web (Versão 1.0) ###

- Esse projeto tem como finalidade realizar testes simples em ruby
- Nesse projeto será contemplado a automação de testes utilizando a web


### BIBLIOTECAS UTILIZADAS ###

- 'capybara'
    - Para realizar simulações de ações de usuários (utilizando-se de frameworks)
- 'cucumber':
    - Para escrever cenários externos (separados/não técnicos) em linguagem humana.
- 'rspec'
    - Um framework BDD que permite a escrita de testes em uma linguagem mais natural.
- 'selenium-webdriver'
    - Para fazer chamadas diretas no navegador usando o suporte nativo de cada navegador.
- 'site_prism'
    - Para facilitar a criação de page objects para testes.
-  'pry':
    - Ponto de debug.


### INSTALAÇÃO ###

- Acessar a pasta "/automacao_web"
- Em seguida executar o comando "bundle install"
- Em seguida executar o comando "sh install-chrome-driver.sh"
    - Instala dependencias do chrome driver (mais detalhes presente no arquivo install-chrome-driver.sh)

 
### PASSOS PARA EXECUÇÃO ###

- Acessar a pasta "/automacao_web";
- Informar o comando "cucumber" depois o ambiente "-p" e a(s) respectiva(s) tag(s) "-t@)" que gostaria de executar, ex:
    - "cucumber -p hml -t '@pesquisa_de_produto'" 


### PROXIMAS MELHORIAS ###

-  Adicionar cenários de compras.
-  Adicionar e validar o grafico Allure
    - Biblioteca: 'allure-cucumber';
    - Gerar graficos e relatórios das execuções dos testes.
