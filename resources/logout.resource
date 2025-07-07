*** Settings ***
Documentation    Keywords para o teste de logout com sucesso.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    login.resource

*** Variables ***

*** Keywords ***

Realizar o logout com sucesso
    Realizar o login com sucesso    CLOSE_BROWSER=${False}  
    Wait Until Element Is Visible    locator=//i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
    Click Element    locator=//i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']    # Menu de acesso a opção Logout 
    Sleep    2s    # Para aguardar o elemento de Logout antes do Screenshot
    Capture Page Screenshot
    Click Element    locator=//a[normalize-space()='Logout']    # Clica em botão de logout
    Wait Until Page Contains Element    locator=//h5[normalize-space()='Login']    #Confirma que está na página inicial de login novamente
    Capture Page Screenshot