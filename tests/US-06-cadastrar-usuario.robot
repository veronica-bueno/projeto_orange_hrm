*** Settings ***
Documentation    Página de cadastro de usuário
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-06-cadastrar-usuario.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-06 :: User Story 6 - Cadastrar usuário com sucesso
    [Tags]    usuario    cadastro_usuario
    
    Cadastrar usuário no sistema com sucesso
    Confirmar o cadastro do usuário
    Realizar o logout e tentar acessar com novo cadastro
    Confirmar que está na página de dashboard após novo login

