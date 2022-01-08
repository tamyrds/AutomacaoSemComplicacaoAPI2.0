
Funcionalidade: Realizar login
  Testes da API de Login

    Scenario: Realizar Login com sucesso
      Given que tenha um payload valido da API de login
      When envio uma requisicao do tipo POST de login
      Then valido que recebo status 200 no response
      And armazeno o token que recebo do response de login


    Scenario: Realizar Login com usuario invalido
      Given que tenha um payload da API de login com as seguintes informacoes
        | email | invalido@gmail.com |
        | senha | 123456             |
      When envio uma requisicao do tipo POST de login
      Then valido que recebo status 400 no response
