*** Settings ***
Documentation    Keywords para os testes de login com credenciais incorretas no OrangeHRM.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource    # Necessário para a Keyword 'Clicar no botão <login>'

*** Variables ***
${USERNAME_INCORRETO}    AdminIncorreto
${PASSWORD_INCORRETA}    senhaIncorreta

*** Keywords ***
Digitar um username incorreto
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${USERNAME_INCORRETO}    # Preenche o campo 'Username' com um nome de usuário incorreto
Digitar uma password correta
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}     # Preenche o campo 'Password' com a senha correta do administrador
    Clicar no botão <login>    # Keyword US-01-login-valido.resource
Mensagem de credenciais inválidas
    Wait Until Element Is Visible    locator=//div[@class='oxd-alert-content oxd-alert-content--error'] 
    Element Text Should Be    locator=//div[@class='oxd-alert-content oxd-alert-content--error']    expected=Invalid credentials
    Capture Page Screenshot
Digitar um username correto
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}    
Digitar uma password incorreta 
    Input Password    locator=//input[@placeholder='Password']    password=${PASSWORD_INCORRETA}     # 'Password' com uma senha incorreta.
    Capture Page Screenshot