*** Settings ***
Documentation    Documentação das keywords de Login válido
Library    SeleniumLibrary
Resource    ../config/config.resource

*** Keywords ***
Realizar o login
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME} 
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}
Clicar no botão <login>
    Click Button    locator=//button[normalize-space()='Login']
    Capture Page Screenshot