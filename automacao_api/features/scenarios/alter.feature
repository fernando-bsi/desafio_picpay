#encoding: utf-8
#language: pt

Funcionalidade: Alterar um recurso

Como usuário do sistema
Quero alterar um recurso
Para garantir o funcionamento do sistema

Contexto: Validar fluxos de alterar recursos
    Dado que o sistema acesse o endpoint de alterar recursos
    
@alterar_recurso @alterar_sucesso @regressao 
Cenario: Validar a alteracao de um recurso com sucesso 
Quando chamar o serviço de alterar recurso com as informações corretas
Então o serviço altera o recurso retornando status code igual a "200" e apresentando id "1"