# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
  Dado que eu esteja no site  http://automationpractice.com

  @buscar_por_termo_valido
  Cenario: Buscar por termo valido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados os produtos


  @busca_sem_resultados
  Cenario: Busca sem resultados
    Quando buscar pelo produto 'sapato'
    Então deve me retorna resultado nao encontrado

  @adicionar_produto_no_carinho
  Cenario: Adicionar produto no carrinho
    Quando buscar pelo produto 'Blouse'
    E clicar sobre o produto
    E clicar para adicionar ao carrinho
    Então confirmar produto inserido 

