# language: pt
Funcionalidade: Cadastro de usuario

  Contexto: Cadastro de usuario
    Dado que eu esteja na homepage
    E acesse a sigin page
    E informe um email valido
    E clique no botao Create an account

  Cenário: Cadastrar usuario com sucesso

    Quando eu informar os dados corretos
    E precionar o botao registrar
    Então minha conta sera criada com sucesso
