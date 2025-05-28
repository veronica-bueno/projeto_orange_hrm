*** Settings ***
Documentation    Documentação das keywords de Login com credenciais em branco
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource

*** Variables ***
${NULO}    

*** Keywords ***
Tentar realizar login com username em branco
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${NULO}    #Campo em branco do Username
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}    #Password correta
    Clicar no botão <login>    # Keyword da User Story 1
Verificar mensagem de erro 
    Element Text Should Be    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    expected=Required
    Capture Page Screenshot
    Close Browser
Tentar realizar login com password em branco
    Abrir a página Orange HRM
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}    #Username correta
    Input Password    locator=//input[@placeholder='Password']    password=${NULO}    #Campo em branco da Password
    Clicar no botão <login>    # Keyword da User Story 1
    Wait Until Element Is Visible    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Verificar mensagem de erro    # Keyword criada anteriormente