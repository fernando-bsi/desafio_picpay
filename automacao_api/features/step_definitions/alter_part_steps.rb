Dado('que o sistema acesse o endpoint de alterar parte do recurso') do
    @chamada_alterar_parte = AlterarParteDoRecurso.new
end
  
  Quando('chamar o serviço alterar com valores somente do campo titulo') do
    @response = @chamada_alterar_parte.alterar_titulo[0]
  end
  
  Então('o serviço altera o titulo retornando status code igual a {string}') do |string|
    expect(@response.code).to eq 200
    expect(@response["title"]).to eq "alterando o titulo"
    Kernel.puts @response.code
    Kernel.puts @response["title"]
    Kernel.puts @response
  end