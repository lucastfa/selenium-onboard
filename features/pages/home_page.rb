class HomePage < SitePrism::Page
  set_url 'http://automationpractice.com'

  def go_to_sign_in
    click_link 'Sign in'
  end
end
