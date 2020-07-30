
Dado('que acesse a pagina principal da americanas') do
    @americanas.load
end
  
Quando('clicar no campo busque aqui seu produto') do
    @home.campo_pesquisa.click
end
  
Quando('inserir a informação xbox confirmando a pesquisa pela lupa') do
    @home.campo_pesquisa.set("xbox")
    @home.botao_lupa.click
end
  
Então('devera apresentar o produto xbox no resultado da pesquisa') do
    expect(page).to have_content('console xbox')
end