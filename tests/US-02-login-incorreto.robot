*** Settings ***
Documentation    Página de Login com credenciais incorretas
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-02-login-incorreto.resource
Resource    ../resources/US-01-login-valido.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-02 :: User Story 2 - Login com credenciais incorretas
    [Tags]    login    login_incorreto    credenciais_incorretas

    Digitar um username incorreto
    Digitar uma password correta
    Clicar no botão de login
    Mensagem de credenciais inválidas
    Digitar um username correto
    Digitar uma password incorreta 

    