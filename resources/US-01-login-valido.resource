*** Settings ***
Documentation    Keywords reutilizáveis para a funcionalidade de login com credenciais válidas.
Library    SeleniumLibrary
Resource    ../config/config.resource

*** Keywords ***
Realizar o login   
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']    # Aguarda o campo de usuário estar visível
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}     # Insere o nome de usuário do admin
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}    # Insere a senha do admin
Clicar no botão <login>
    Capture Page Screenshot    
    Click Button    locator=//button[normalize-space()='Login']    # Botão de ação de <login>
    