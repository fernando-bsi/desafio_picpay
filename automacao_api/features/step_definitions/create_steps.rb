Dado('que o sistema acesse o endpoint de criar recursos') do
  @chamada_criar = CriarRecurso.new
end

Quando('chamar o serviço de criar recurso com as informações corretas') do
  @response = @chamada_criar.criar_sucesso[0]
end

Então('o serviço cria o recurso retornando status code igual a {string} e id {string}') do |string, id|
  expect(@response.code).to eq 201
  expect(@response["id"]).to eq 101
  Kernel.puts @response.code
  Kernel.puts @response["id"]
  Kernel.puts @response
end