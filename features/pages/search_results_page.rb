class SearchResultsPage < SitePrism::Page
  element :item, '#center_column > ul > li > div > div.left-block > div'
  element :add_card_button, '#center_column > ul > li > div > div.right-block > div.button-container > a.button.ajax_add_to_cart_button.btn.btn-default'
  element :success_page, '#layer_cart > div.clearfix > div.layer_cart_product.col-xs-12.col-md-6 > h2'

  def createAccount
    add_card_button.click
  end
end
