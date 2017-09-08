class SigninPage < SitePrism::Page

  element :email_field, "#email_create"
  element :create_account_button, "#SubmitCreate"

  def createAccount
    wait_for_email_field
    email_field.set(Faker::Internet.email)
    click_on 'Create an account'
  end

end
