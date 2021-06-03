require_relative 'sections/product.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    sections :products, Sections::Product, '.product-container'
    
  end

  element  :shirts, By.className("product-name");
  element  :blouse, By.className("product-container");  
  element  :produto_nao_encontrado, By.className("alert alert-warning");
end
