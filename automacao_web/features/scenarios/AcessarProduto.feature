#encoding: utf-8
#language: pt

Funcionalidade: Adicionar produto no carrinho de compra pela pesquisa

@AdicionarProduto 
Cenário: Adicionar produto no carrinho
    Dado que acesse a pagina principal da americanas
    Quando clicar no campo busque aqui seu produto
    E inserir a informação xbox confirmando a pesquisa pela lupa     
    Então devera apresentar o produto xbox no resultado da pesquisa
