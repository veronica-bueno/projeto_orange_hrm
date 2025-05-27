*** Settings ***
Documentation    Documentação das keywords Página principal|Dashboard
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource


*** Variables ***


*** Keywords ***
Acessar cadastro de administrador
    Realizar o login
    Clicar no botão <login>
Deletar o cadastro de usuário existente
    Wait Until Element Is Visible    locator=//ul[@class='oxd-main-menu']
    Click Element    xpath=//a[.//span[text()='Admin']]    # Menu: Admin
    Wait Until Element Is Visible    locator=(//h5[normalize-space()='System Users'])[1]
    Input Text    locator=(//input[@class='oxd-input oxd-input--active'])[2]    text=${USER_USERNAME}
    Click Button    locator=(//button[normalize-space()='Search'])[1]
    Wait Until Element Is Visible    locator=(//div[contains(text(),'${USER_USERNAME}')])[1]
    Click Button    locator=(//button[@type='button'])[7]
    Wait Until Element Is Visible    locator=(//div[@role='document'])[1]
    Capture Page Screenshot
    Click Button    locator=(//button[normalize-space()='Yes, Delete'])[1]
    Wait Until Element Is Visible    locator=(//span[normalize-space()='No Records Found'])[1]
