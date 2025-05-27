*** Settings ***
Documentation    Página de cadastro de usuário
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-07-deletar-usuario.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-05 :: User Story 6 - Deletar um usuário do sistema
    [Tags]    usuario    deletar_usuario
    
    Acessar cadastro de administrador
    Deletar o cadastro de usuário existente