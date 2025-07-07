*** Settings ***
Documentation    Testes para verificar a funcionalidade de deletar um usuário existente no sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/delete.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
Deletar um usuário do sistema com sucesso
    [Documentation]    Este teste verifica o fluxo de deleção de um usuário existente 
    ...                através da interface de administração do sistema.
    
    [Tags]    deletar_usuario
    
    Acessar cadastro de administrador
    Deletar o cadastro de um usuário existente