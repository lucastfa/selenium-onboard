class HomePage < SitePrism::Page
  set_url 'http://automationpractice.com'

  element :login_link, '.login'
  element :search_field, '#search_query_top'
  element :search_button, '#searchbox > button'

  def go_to_login
    wait_for_login_link
    login_link.click
  end
end
