*** Settings ***
Documentation    Página de Login válidacom credenciais válidas
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-01-login-valido.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US 01 :: User Story 1 - Login com Credenciais Válidas
    [Tags]    login    login_valido    credenciais_validas

    Realizar o login    
    Clicar no botão <login>