*** Settings ***
Documentation    Página de Login com credenciais em branco
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-03-login-em-branco.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-03 :: User Story 3 - Login com usuario ou senha em branco
    [Tags]    login    login_em_branco

    Tentar realizar login com username em branco
    Verificar mensagem de erro
    Tentar realizar login com password em branco

    