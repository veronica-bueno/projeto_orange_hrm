*** Settings ***
Documentation    Keywords reutilizáveis para a funcionalidade de login.
Library    SeleniumLibrary
Resource    ../config/config.resource


*** Variables ***
${USERNAME_INCORRETO}    AdminIncorreto
${PASSWORD_INCORRETA}    senhaIncorreta
${VAZIO}

*** Keywords ***
Realizar o login com sucesso     
    [Arguments]    ${CLOSE_BROWSER}
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']    # Aguarda o campo de usuário estar visível
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}     # Insere o nome de usuário do admin
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}    # Insere a senha do admin
    Click Button    locator=//button[normalize-space()='Login']    # Botão de ação de <login>
    
    IF    ${CLOSE_BROWSER} == $True
        Close Browser
    END
    
Tentativa de login com username incorreto e password correta
    Abrir a página Orange HRM
    Wait Until Element Is Visible    locator=//input[@placeholder='Username'] 
    Input Text    locator=//input[@placeholder='Username']   text=${USERNAME_INCORRETO}    # Preenche o campo 'Username' com um nome de usuário incorreto
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}     # Preenche o campo 'Password' com a senha correta do administrador
    Clicar no botão <login>
    Capture Page Screenshot
Tentativa de login com username correto e password incorreta
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']    text=${ADMIN_USERNAME}    
    Input Password    locator=//input[@placeholder='Password']    password=${PASSWORD_INCORRETA}     # 'Password' com uma senha incorreta.
    Clicar no botão <login>
    Capture Page Screenshot
Validar mensagem de credenciais inválidas
    Tentativa de login com username correto e password incorreta
    Wait Until Element Is Visible    locator=//p[@class='oxd-text oxd-text--p oxd-alert-content-text'] 
    Element Text Should Be    locator=//p[@class='oxd-text oxd-text--p oxd-alert-content-text']    expected=Invalid credentials
    Capture Page Screenshot
    Close Browser
Tentativa de login com username em branco
    Abrir a página Orange HRM
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Password    locator=//input[@placeholder='Password']    password=${ADMIN_PASSWORD}    #Password correta
    Clicar no botão <login>
    Wait Until Element Is Visible    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Element Text Should Be    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    expected=Required    
    Capture Page Screenshot
    Close Browser
Tentativa de login com password em branco
    Abrir a página Orange HRM
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Input Text    locator=//input[@placeholder='Username']   text=${ADMIN_USERNAME}    #Username correta
    Clicar no botão <login>
    Wait Until Element Is Visible    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Element Text Should Be    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    expected=Required
    Capture Page Screenshot
    Close Browser
Verificar mensagem de dados obrigatórios
    Abrir a página Orange HRM
    Wait Until Element Is Visible    locator=//input[@placeholder='Username']
    Clicar no botão <login>
    Wait Until Element Is Visible    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Element Text Should Be    locator=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']    expected=Required
    Capture Page Screenshot
