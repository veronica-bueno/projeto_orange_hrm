*** Settings ***
Documentation    Documentação das keywords de Login válido
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource

*** Variables ***
${NULO}    

*** Keywords ***
Tentar realizar login com usuario em branco
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${NULO}    #Campo em branco do Username
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}    #Password correta
    Click Button    locator=(//button[normalize-space()='Login'])[1]
Verificar mensagem de erro 
    Element Text Should Be    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    expected=Required
    Capture Page Screenshot
    Close Browser
Tentar realizar login com senha em branco
    Abrir a página Orange HRM
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}    #Username correta
    Input Password    locator=//input[@placeholder='Password']    password=${NULO}    #Campo em branco da Password
    Click Button    locator=(//button[normalize-space()='Login'])[1]
    Wait Until Element Is Visible    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Verificar mensagem de erro