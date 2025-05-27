*** Settings ***
Documentation    Documentação das keywords de Login válido
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource

*** Variables ***
${USERNAME_INCORRETO}    AdminIncorreto
${PASSWORD_INCORRETA}    senhaIncorreta

*** Keywords ***
Digitar um login incorreto
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${USERNAME_INCORRETO}
Digitar a senha correta
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}
Clicar no botão
    Clicar no botão <login>
Mensagem de credenciais inválidas
    Wait Until Element Is Visible    locator=//div[@class='oxd-alert-content oxd-alert-content--error'] 
    Element Text Should Be    locator=//div[@class='oxd-alert-content oxd-alert-content--error']    expected=Invalid credentials
    Capture Page Screenshot
Digitar um login correto
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}
Digitar uma senha incorreta
    Input Password    locator=//input[@placeholder='Password']    password=${PASSWORD_INCORRETA} 