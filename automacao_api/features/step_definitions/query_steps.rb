Dado('que o sistema acesse o endpoint de consultar recursos') do
  @chamada_consultar = ConsultarRecurso.new
end

Quando('chamar o serviço de consultar recurso com as informações corretas') do
  @response = @chamada_consultar.consulta_sucesso[0]
end

Então('o serviço consulta o recurso retornando status code igual a {string} e userId {string}') do |string, userId|
  expect(@response.code).to eq 200
  expect(@response[0]["userId"]).to eq 1
  Kernel.puts @response.code
  Kernel.puts @response[0]["userId"]
  Kernel.puts @response[0]
end

Quando('chamar o serviço de consultar recurso com as informações invalidas') do
  @response = @chamada_consultar.consulta_invalida[0]
end

Então('o serviço consulta o recurso invalido retornando status code igual a {string}') do |string|
  expect(@response.code).to eq 404
  Kernel.puts @response.code
end

Quando('chamar o serviço de consultar recurso com o id inexistente') do
  @response = @chamada_consultar.consulta_invalida[0]
end

Então('o serviço consulta o recurso inexistente retornando status code igual a {string}') do |string|
  expect(@response.code).to eq 404
  Kernel.puts @response.code
end