#encoding: utf-8
#language: pt

Funcionalidade: excluir um recurso

Como usuário do sistema
Quero excluir um recurso
Para garantir o funcionamento do sistema

Contexto: Validar fluxos de excluir recursos
    Dado que o sistema acesse o endpoint de excluir recursos
    
@excluir_recurso @excluir_sucesso @regressao 
Cenario: Validar a exclusao de um recurso com sucesso 
Quando chamar o serviço de excluir recurso com as informações corretas
Então o serviço exclui o recurso retornando status code igual a "201"