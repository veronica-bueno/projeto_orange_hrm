*** Settings ***
Documentation    Testes para validar a visibilidade e interatividade 
...              dos elementos principais da tela de Dashboard do sistema OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-05-dashboard.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-05 :: User Story 5 - Visualizar e interagir com elementos principais do Dashboard
    [Documentation]    Este teste verifica a presença e a funcionalidade dos principais
    ...                elementos visuais e interativos do Dashboard, como o menu lateral, 
    ...                botão de recolhimento do menu, campo de pesquisa e cabeçalho.
    
    [Tags]    dashboard     tela_principal
    
    Validar se itens do menu lateral estão visíveis e clicaveis
    Validar botão do menu lateral
    Validar campo de pesquisa
    Validar cabeçalho
    