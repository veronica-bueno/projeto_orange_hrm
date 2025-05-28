*** Settings ***
Documentation    Documentação da Página principal | Dashboard
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    ../resources/US-05-dashboard.resource

Suite Setup    Abrir a página Orange HRM
Suite Teardown    Close Browser

*** Test Cases ***
US-05 :: User Story 5 - Validar itens da tela de Dashboard
    [Tags]    dashboard     tela_principal
    
    Validar se itens do menu lateral estão visíveis e clicaveis
    Validar botão do menu lateral
    Validar campo de pesquisa
    Validar cabeçalho
    