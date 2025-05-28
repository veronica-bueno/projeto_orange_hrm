*** Settings ***
Documentation    Testes para verificar a funcionalidade de cadastro de um 
...              novo usuário no sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-06-cadastrar-usuario.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-06 :: User Story 6 - Cadastrar usuário com sucesso
    [Documentation]    Este teste verifica o fluxo de cadastro de um novo 
    ...                usuário no sistema, incluindo a confirmação do cadastro e o 
    ...                login com as novas credenciais.
    
    [Tags]    usuario    cadastro_usuario
    
    Cadastrar usuário no sistema com sucesso
    Confirmar o cadastro do usuário
    Realizar o logout e tentar acessar com novo cadastro
    Confirmar que está na página de dashboard após novo login

