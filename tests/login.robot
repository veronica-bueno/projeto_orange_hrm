*** Settings ***
Documentation    Testes para verificar a funcionalidade de login no sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/login.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
Tela de Login
    [Documentation]    Este teste verifica o fluxo de login utilizando um usuário 
    ...                administrador com credenciais válidas e tentativas de login inválidas.
    
    [Tags]    login    login_valido    credenciais_validas    login_invalido    credenciais_invalidas

    Realizar o login com sucesso    CLOSE_BROWSER=${True}
    Tentativa de login com username incorreto e password correta
    Tentativa de login com username correto e password incorreta
    Validar mensagem de credenciais inválidas
    Tentativa de login com username em branco
    Tentativa de login com password em branco
    Verificar mensagem de dados obrigatórios
    
    