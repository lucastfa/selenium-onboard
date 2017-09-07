# language: pt
Funcionalidade: Cadastro de usuario

  Contexto: Cadastro de usuario
    Dado que eu esteja na homepage
    E acesse a sigin page
    E comece um cadastro de usuário

  Cenário: Cadastrar usuario com sucesso
    Quando eu informar os dados corretos
    E concluir o cadastro
    Então minha conta sera criada com sucesso
