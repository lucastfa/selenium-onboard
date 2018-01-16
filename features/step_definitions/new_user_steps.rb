def instantiate_objects
  @home_page = HomePage.new
  @signin_page = SigninPage.new
  @newaccount_page = CreateAccountPage.new
  @my_account_page = MyAccountPage.new
end

Given(/^that the user is in the home page$/) do
  instantiate_objects
  @home_page.load
end

And(/^want to create a new account$/) do
  @home_page.go_to_sign_in
  @signin_page.create_account
end

When(/^the user input the correct data$/) do
  @newaccount_page.fill_personal_information
  @newaccount_page.fill_your_address
  @newaccount_page.confirm
end

Then(/^the account should be created with success$/) do
  expect(@my_account_page).to have_content(@my_account_page.success_message)
end
