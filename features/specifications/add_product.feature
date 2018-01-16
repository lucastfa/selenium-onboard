@addProduct
Feature: Add Product to Cart

  Scenario: Add a product

    Given that the user is in the home page
      And want to search for a product
    When  add a product to the cart    
    Then  The page shows the success message


  