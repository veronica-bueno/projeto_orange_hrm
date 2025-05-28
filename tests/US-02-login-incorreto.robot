*** Settings ***
Documentation    Testes para verificar o comportamento da página de login ao 
...              inserir credenciais inválidas no sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-02-login-incorreto.resource
Resource    ../resources/US-01-login-valido.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-02 :: User Story 2 - Falha ao logar com credenciais inválidas
    [Documentation]    Este teste verifica se o sistema exibe a mensagem de erro 
    ...                correta ao tentar logar com credenciais inválidas como:
    ...                username incorreto e/ou password incorreta.
    
    [Tags]    login    login_invalido    credenciais_invalidas

    Digitar um username incorreto
    Digitar uma password correta
    Clicar no botão de login
    Mensagem de credenciais inválidas
    Digitar um username correto
    Digitar uma password incorreta 

    