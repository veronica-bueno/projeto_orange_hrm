*** Settings ***
Documentation    Documentação das keywords de Login válido
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource

*** Variables ***

*** Keywords ***
Realizar o logout com sucesso
    Realizar o login    #login com usuário e senhas corretas
    Clicar no botão <login>
    Wait Until Element Is Visible    locator=//i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
    Click Element    locator=//i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
    Sleep    2s
    Capture Page Screenshot
    Click Element    locator=//a[normalize-space()='Logout']    #clica em botão de logout
    Wait Until Page Contains Element    locator=//h5[normalize-space()='Login']    #Confirma que está na página de login novamente
    Capture Page Screenshot