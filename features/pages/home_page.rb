class HomePage < SitePrism::Page

  set_url "http://automationpractice.com"

  element :login_link, ".login"

  def goToLogin
    wait_for_login_link
    login_link.click
  end
end
