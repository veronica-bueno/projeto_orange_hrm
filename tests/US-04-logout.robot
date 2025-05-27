*** Settings ***
Documentation    Página de Login em branco
Library    SeleniumLibrary
Resource    ../config/config.resource

Resource    ../resources/US-01-login-valido.resource
Resource    ../resources/US-03-login-em-branco.resource
Resource    ../resources/US-04-logout.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-04 :: User Story 4 - Logout com sucesso
    [Tags]    logout

    Realizar o logout com sucesso

    