#encoding: utf-8
#language: pt

Funcionalidade: Consultar um recurso

Como usuário do sistema
Quero consultar um recurso
Para garantir o funcionamento do sistema

Contexto: Validar fluxos de consultar recursos
    Dado que o sistema acesse o endpoint de consultar recursos
    
@consultar @consultar_sucesso @regressao 
Cenario: Validar a consulta de um recurso com sucesso 
Quando chamar o serviço de consultar recurso com as informações corretas
Então o serviço consulta o recurso retornando status code igual a "200" e userId "1"

@consultar @consulta_invalida  
Cenario: Validar a consulta invalida de um recurso
Quando chamar o serviço de consultar recurso com as informações invalidas
Então o serviço consulta o recurso invalido retornando status code igual a "404"

@consultar @consulta_inexistente 
Cenario: Validar a consulta inexistente de um recurso
Quando chamar o serviço de consultar recurso com o id inexistente
Então o serviço consulta o recurso inexistente retornando status code igual a "404"