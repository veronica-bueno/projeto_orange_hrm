*** Settings ***
Documentation    Testes para verificar o comportamento da página de login 
...              ao tentar logar com o username ou a senha em branco no 
...              sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-03-login-campos-obrigatorios.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-03 :: User Story 3 - Login com campos obrigatórios
    [Documentation]    Este teste verifica se o sistema impede o login e 
    ...                exibe a mensagem de erro correta quando o usuário 
    ...                tenta logar deixando o username ou a senha em branco.
    
    [Tags]    login    login_em_branco    campos_obrigatorios

    Tentar realizar login com username em branco
    Verificar mensagem de erro
    Tentar realizar login com password em branco

    