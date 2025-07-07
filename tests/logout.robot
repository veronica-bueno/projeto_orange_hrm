*** Settings ***
Documentation    Testes para verificar a funcionalidade de logout do sistema OrangeHRM
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/login.resource
Resource    ../resources/logout.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
Tela de logout
    [Documentation]    Este teste verifica se um usuário logado consegue realizar o 
    ...                logout do sistema e é redirecionado para a página de login.
    
    [Tags]    logout    logout_com_sucesso

    Realizar o logout com sucesso

    