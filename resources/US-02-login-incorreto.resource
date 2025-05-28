*** Settings ***
Documentation    Documentação das keywords de Login com credenciais incorretas
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource

*** Variables ***
${USERNAME_INCORRETO}    AdminIncorreto
${PASSWORD_INCORRETA}    senhaIncorreta

*** Keywords ***
Digitar um username incorreto
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${USERNAME_INCORRETO}
Digitar uma password correta
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}
Clicar no botão de login    # Keyword da User Story 1
    Clicar no botão <login>
Mensagem de credenciais inválidas
    Wait Until Element Is Visible    locator=//div[@class='oxd-alert-content oxd-alert-content--error'] 
    Element Text Should Be    locator=//div[@class='oxd-alert-content oxd-alert-content--error']    expected=Invalid credentials
    Capture Page Screenshot
Digitar um username correto
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}
Digitar uma password incorreta 
    Input Password    locator=//input[@placeholder='Password']    password=${PASSWORD_INCORRETA} 
    Capture Page Screenshot