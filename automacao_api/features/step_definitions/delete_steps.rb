Dado('que o sistema acesse o endpoint de excluir recursos') do
    @chamada_excluir = ExcluirrRecurso.new
end
  
  Quando('chamar o serviço de excluir recurso com as informações corretas') do
    @response = @chamada_excluir.excluir_sucesso
  end
  
  Então('o serviço exclui o recurso retornando status code igual a {string}') do |string|
    expect(@response.code).to eq 200
    Kernel.puts @response.code
    Kernel.puts @response
  end