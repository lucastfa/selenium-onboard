class HomePage < SitePrism::Page

  set_url "http://automationpractice.com"

  element :login_link, ".login"
  element :search_field, "#search_query_top"
  element :search_button, "#searchbox > button"

  def goToLogin
    wait_for_login_link
    login_link.click
  end

  def fillSearchInformation
  	search_field.set("shirt")
  	search_button.click
  end
end
