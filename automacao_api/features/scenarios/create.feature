#encoding: utf-8
#language: pt

Funcionalidade: Criar um recurso

Como usuário do sistema
Quero criar um recurso
Para garantir o funcionamento do sistema

Contexto: Validar fluxos de criar recursos
    Dado que o sistema acesse o endpoint de criar recursos
    
@criar_recurso @criar_sucesso @regressao 
Cenario: Validar a criacao de um recurso com sucesso 
Quando chamar o serviço de criar recurso com as informações corretas
Então o serviço cria o recurso retornando status code igual a "201" e id "101"