### PROJETO DE TESTES - automacao_api (Versão 1.0) ###

- Esse projeto tem como finalidade realizar testes simples em ruby utilizando a api do JSONPlaceholder (uma API REST on-line e gratuita onde se pode usar sempre que precisar de dados fakes.).
- Nesse projeto será contemplado a automação de testes utilizando os verbos GET, POST, PUT, PATCH e DELETE.


### BIBLIOTECAS UTILIZADAS ###

-  'pry':
    - Ponto de debug.
-  'cucumber':
    - Para escrever cenários externos (separados/não técnicos) em linguagem humana.
-  'httparty':
    - Simplifica a manipulação de requisições e respostas REST.
-  'ffaker'
    - Gera dados fictícios.
-  'rubocop' , ' ~> 0.75.1 ' , require:  false
    - Ferramenta de verificação e formatação de código de estilo Ruby. 


### INSTALAÇÃO ###

- Acessar a pasta "/automacao_api"
- Em seguida executar o comando "bundle install"

O resultado deverá ser similar a frase abaixo:
- Bundle complete! 5 Gemfile dependencies, 41 gems now installed.  

 
### PASSOS PARA EXECUÇÃO ###

- Acessar a pasta "/automacao_api";
- Informar o comando "cucumber" depois o ambiente "-p" e a(s) respectiva(s) tag(s) "-t@)" que gostaria de executar, ex:
    - "cucumber -p hml -t '@criar_sucesso'" 


### PROXIMAS MELHORIAS ###

-  Adicionar e validar o grafico Allure
    - Biblioteca: 'allure-cucumber';
    - Gerar graficos e relatórios das execuções dos testes.
