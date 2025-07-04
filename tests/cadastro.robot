*** Settings ***
Documentation    Testes para verificar a funcionalidade de cadastro de um 
...              novo usuário no sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/cadastro.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
Cadastro de usuário
    [Documentation]    Este teste verifica o fluxo de cadastro de um novo 
    ...                usuário no sistema, incluindo a confirmação do cadastro e o 
    ...                login com as novas credenciais.
    
    [Tags]    usuario    cadastro_usuario
    
    Cadastrar usuário no sistema com sucesso
    Confirmar o cadastro do usuário
    Acesso do usuário novo cadastrado
    Confirmar que está na página de dashboard após novo login

