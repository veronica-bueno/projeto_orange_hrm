*** Settings ***
Documentation    Página de Login em branco
Library    SeleniumLibrary
Resource    ../config/config.resource

Resource    ../resources/US-01-login-valido.resource
Resource    ../resources/US-03-login-em-branco.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-03 :: User Story 3 - Login com usuario ou senha em branco
    [Tags]    login    login_em_branco

    Tentar realizar login com usuario em branco
    Verificar mensagem de erro
    Tentar realizar login com senha em branco

    