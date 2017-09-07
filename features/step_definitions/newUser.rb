Dado(/^que eu esteja na homepage$/) do
  @home_page = HomePage.new
  @home_page.load

  expect(@home_page.current_url).to include "automationpractice.com"
end

Dado(/^acesse a sigin page$/) do
  @home_page.goToLogin

  @signin_page = SigninPage.new
  expect(@signin_page.title).to include "Login"
end

Dado(/^comece um cadastro de usuário$/) do
  @signin_page.createAccount
end

Quando(/^eu informar os dados corretos$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^concluir o cadastro$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^minha conta sera criada com sucesso$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
