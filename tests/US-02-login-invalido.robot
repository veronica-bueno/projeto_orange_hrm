*** Settings ***
Documentation    Página de Login inválido
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-02-login-invalido.resource
Resource    ../resources/US-01-login-valido.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-02 :: User Story 2 - Login com credenciais inválidas
    [Tags]    login    login_invalido

    Digitar um login incorreto
    Digitar a senha correta
    Clicar no botão
    Mensagem de credenciais inválidas
    Digitar um login correto
    Digitar uma senha incorreta 

    