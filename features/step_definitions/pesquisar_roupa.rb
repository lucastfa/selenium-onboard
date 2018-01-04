Quando(/^preencha o campo de pesquisa$/) do
  @newaccount_page = HomePage.new
  @newaccount_page.fillSearchInformation
end

Então(/^o resultado da pesquisa sera retornado$/) do
  @seachresult_page = SearchResultsPage.new

  @seachresult_page.createAccount

  expect(@seachresult_page.success_page.text).to include('Product successfully added to your shopping cart')
end
