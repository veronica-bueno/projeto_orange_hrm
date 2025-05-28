*** Settings ***
Documentation    Página de Logout com sucesso
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-04-logout.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-04 :: User Story 4 - Logout com sucesso
    [Tags]    logout    logout_com_sucesso

    Realizar o logout com sucesso

    