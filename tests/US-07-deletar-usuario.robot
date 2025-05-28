*** Settings ***
Documentation    Página de deletar um usuário do sistema com sucesso
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-07-deletar-usuario.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-07 :: User Story 7 - Deletar um usuário do sistema com sucesso
    [Tags]    deletar_usuario
    
    Acessar cadastro de administrador
    Deletar o cadastro de um usuário existente