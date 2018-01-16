def instantiate_objects
  @home_page = HomePage.new
  @signin_page = SigninPage.new
  @newaccount_page = NewAccountPage.new
  @account_page = AccountPage.new
end

Dado(/^que eu esteja na homepage$/) do
  instantiate_objects
  @home_page.load
  expect(@home_page.current_url).to include 'automationpractice.com'
end

Dado(/^acesse a sigin page$/) do
  @home_page.go_to_login
  expect(@signin_page.title).to include 'Login'
end

Dado(/^comece um cadastro de usuário$/) do
  @signin_page.create_account
end

Quando(/^eu informar os dados corretos$/) do
  @newaccount_page.fill_personal_information
  @newaccount_page.fill_your_address
end

Quando(/^concluir o cadastro$/) do
  @newaccount_page.confirm
end

Então(/^minha conta sera criada com sucesso$/) do
  expect(@account_page.current_url).to include 'http://automationpractice.com/index.php?controller=my-account'
end
