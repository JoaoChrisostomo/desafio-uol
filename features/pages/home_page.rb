module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'
    
    element  :logo, By.id("header_logo");
    element  :btn_contact_us, By.id("contact-link"); 
    element  :btn_go_to_sign_in, By.className("login");
    element  :input_search_form, By.id ("#search_query_top");
    element  :button_search, By.id("button-search");
    element  :input_newsletter_footer_email, By.id("newsletter-input");
    element  :btn_newsletter_footer_register, By.className("submitNewsletter");
    element  :add_to_cart, By.id("add_to_cart");
    element  :icon_ok, By.className("icon-ok");
				

    def search(query)
      input_search_form.set(query)
      button_search.click
    end
  end
end
