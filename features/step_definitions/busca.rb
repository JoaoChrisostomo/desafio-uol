Dado("que eu esteja no site") do  
    @home_page.load
    String appUrl {
    metodos.abrirNavegador(appUrl)
    driver.manage().window().maximize();
  }
  
end

Quando("buscar pelo produto {produto}") do |query|
    @home_page.search(query)  {

    metodos.click(element.input_search_form()
    metodos.sendKeys("shirt")
    metodos.click(element.button_search);
 }

end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
  metodos.fecharNavegador();
end

Dado("que eu esteja no site") {String appUrl} do {
   @home_page.load
   metodos.abrirNavegador(appUrl); 
   driver.manage().window().maximize(); 
 }  
end

Quando("buscar pelo produto" {String, sapato} do {
   @home_page.search(query)

   metodos.click(element.search_query);
   metodos.sendKeys("sapato");
   metodos.click(element.button_search);

 }
end

Então("deve me retorna resultado nao encontrado") do {
   assert.AssertEquals("No results were found for your search \"sapato\"", element.produto_nao_encontrado.getText);

 }
end


Dado("que eu esteja no site") {String appUrl} do {
   @home_page.load
   metodos.abrirNavegador(appUrl); 
   driver.manage().window().maximize();  }  

end

Quando("buscar pelo produto" {String, blouse} do {
   @home_page.search(query)

   metodos.click(element.search_query);
   metodos.sendKeys("blouse");
   metodos.click(element.button_search);

 }
end

E ("clicar sobre o produto") String, Blouse {
   metodos.click(element.blouse);
  

 }
end

E ("clicar para adicionar ao carrinho") {
   metodos.click(element.add_to_cart);
 }
end 

Então("confirmar produto inserido") do {
  
   assert.AssertEquals("Product successfully added to your shopping cart", element.icon_ok.getText);
   )


}

