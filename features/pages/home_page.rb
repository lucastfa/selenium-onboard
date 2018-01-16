class HomePage < SitePrism::Page
  set_url 'http://automationpractice.com'

  element :search_input, "#search_query_top"
  element :search_button, ".button-search"
  element :show_add_cart_button, ".product-container"
  element :add_cart_button, ".button.ajax_add_to_cart_button span"
  element :cart_modal, "#layer_cart"

  def go_to_sign_in
    click_link 'Sign in'
  end

 @@item = "shirt"
 @@sucess_message = "Product successfully added to your shopping cart"

  def search
    search_input.set @@item
    search_button.click 
  end

  def add_product
    show_add_cart_button.hover 
    add_cart_button.click
  end

end
