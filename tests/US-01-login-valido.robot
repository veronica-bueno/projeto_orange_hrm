*** Settings ***
Documentation    Testes para verificar a funcionalidade de login com credenciais válidas no sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-01-login-valido.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US 01 :: User Story 1 - Login com Credenciais Válidas
    [Documentation]    Este teste verifica o fluxo de login bem-sucedido utilizando um usuário 
    ...                administrador com credenciais válidas.
    
    [Tags]    login    login_valido    credenciais_validas

    Realizar o login    
    Clicar no botão <login>