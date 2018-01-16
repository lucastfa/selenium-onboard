def instantiate_objects
    @home_page = HomePage.new
end

Given("want to search for a product") do
    instantiate_objects
    @home_page.search
end
  
  When("add a product to the cart") do
    @home_page.add_product
  end
  
  Then("The page shows the success message") do
    expect(@home_page.cart_modal).to have_content(@home_page.success_message)
  end