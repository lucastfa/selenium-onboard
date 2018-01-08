class SigninPage < SitePrism::Page
  element :email_field, '#email_create'
  element :create_account_button, '#SubmitCreate'

  def create_account
    wait_for_email_field
    email_field.set(Faker::Internet.email)
    wait_for_create_account_button
    create_account_button.click
  end
end
