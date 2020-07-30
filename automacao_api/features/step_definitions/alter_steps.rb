Dado('que o sistema acesse o endpoint de alterar recursos') do
    @chamada_alterar = AlterarRecurso.new
end
  
  Quando('chamar o serviço de alterar recurso com as informações corretas') do
    @response = @chamada_alterar.alterar_sucesso[0]
  end
  
  Então('o serviço altera o recurso retornando status code igual a {string} e apresentando id {string}') do |string, id|
    expect(@response.code).to eq 200
    expect(@response["id"]).to eq 1
    expect(@response["title"]).to eq "alterar"
    expect(@response["body"]).to eq "alterar body"
    expect(@response["userId"]).to eq 111
    Kernel.puts @response.code
    Kernel.puts @response["title"]
    Kernel.puts @response["body"]
    Kernel.puts @response["userId"]
    Kernel.puts @response["id"]
    Kernel.puts @response
  end