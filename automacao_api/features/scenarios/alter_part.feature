#encoding: utf-8
#language: pt

Funcionalidade: Alterar um campo do recurso

Como usuário do sistema
Quero alterar somente um campo do recurso
Para garantir o funcionamento do sistema

Contexto: Validar fluxos de alterar parte do recurso
    Dado que o sistema acesse o endpoint de alterar parte do recurso
    
@alterar_parte @alterar_parte_sucesso @regressao 
Cenario: Validar a alteracao somente do campo titulo de um recurso
Quando chamar o serviço alterar com valores somente do campo titulo
Então o serviço altera o titulo retornando status code igual a "200"