*** Settings ***
Documentation    Este arquivo contém os testes automatizados para validar a funcionalidade de login do sistema OrangeHRM.
...              Abrange cenários de login bem-sucedido, tentativas com credenciais inválidas,
...              campos em branco, e validação de mensagens de erro esperadas na tela de login.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/1.login.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
Tela de Login
    [Documentation]    Este teste verifica o fluxos de login utilizando um usuário 
    ...                administrador com credenciais válidas e tentativas de login inválidas e/ou ausêntes, 
    ...                além de validar mensagens da tela.
    
    [Tags]    login    login_valido    credenciais_validas    login_invalido    credenciais_invalidas    credenciais_ausentes

    Realizar o login com sucesso    CLOSE_BROWSER=${True}
    Tentativa de login com username incorreto e password correta
    Tentativa de login com username correto e password incorreta
    Validar mensagem de credenciais inválidas
    Tentativa de login com username em branco
    Tentativa de login com password em branco
    Verificar mensagem de dados obrigatórios
    
    