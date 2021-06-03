# language: pt

Funcionalidade: login no Ecommerce Fake
  Eu como usuário quero realizar o cadastro e login

  Contexto:
    Dado que eu esteja no site http://automationpractice.com

  @realizar_login
  Cenário: Realizar login
    Quando clicar em login
    E preencher os campos de login
    E clicar em efetuar login
    Então validar login

  @realizar_login_com_falha
  Cenário: Realizar login com falha
    Quando clicar em login 
    E preencher os campo de login com senha erada
    E clicar em efetuar login
    Então validar falha de login

