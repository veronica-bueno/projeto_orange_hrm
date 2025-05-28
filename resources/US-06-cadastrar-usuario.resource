*** Settings ***
Documentation    Keywords para o teste de cadastro de um novo usuário.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    US-01-login-valido.resource


*** Variables ***
${FIRST_NAME}    Fernanda
${MIDDLE_NAME}    Rodrigues
${LAST_NAME}    Souza

*** Keywords ***
Cadastrar usuário no sistema com sucesso
    Realizar o login    # Keyword User Story 1
    Clicar no botão <login>
    Wait Until Element Is Visible    xpath=//a[.//span[text()='PIM']] 
    Click Element    xpath=//a[.//span[text()='PIM']]    # Menu: PIM
    Wait Until Element Is Visible    locator=//h6[normalize-space()='PIM']    # Confirmar que mudou para página PIM
    Click Button    locator=(//button[normalize-space()='Add'])[1]

    Wait Until Element Is Visible    locator=(//h6[normalize-space()='Add Employee'])[1]
    Input Text    locator=(//input[@placeholder='First Name'])[1]    text=${FIRST_NAME}    # Dados principais do usuário novo
    Input Text    locator=(//input[@placeholder='Middle Name'])[1]   text=${MIDDLE_NAME}
    Input Text    locator=(//input[@placeholder='Last Name'])[1]    text=${LAST_NAME}

    Click Element    locator=(//span[@class='oxd-switch-input oxd-switch-input--active --label-right'])[1]

    Wait Until Element Is Visible    locator=(//input[@class='oxd-input oxd-input--active'])[3]
    Input Text    locator=(//input[@class='oxd-input oxd-input--active'])[3]    text=${USER_USERNAME}    # Criação do Username e password do usuário novo
    Input Password    locator=(//input[@type='password'])[1]    password=${USER_PASSWORD}    # Password
    Input Password    locator=(//input[@type='password'])[2]    password=${USER_PASSWORD}    # Confirma a password digitada anteriormente
    Capture Page Screenshot
    Click Button    locator=(//button[normalize-space()='Save'])[1]
Confirmar o cadastro do usuário
    Wait Until Element Is Visible    locator=(//h6[normalize-space()='Personal Details'])[1]    # Página de detalhes do usuário cadastrado
    Capture Page Screenshot

Realizar o logout e tentar acessar com novo cadastro
    Click Element    locator=(//i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon'])[1]
    Wait Until Element Is Visible    locator=(//a[normalize-space()='Logout'])[1]
    Click Element    locator=(//a[normalize-space()='Logout'])[1]    # Botão de logout
    Wait Until Element Is Visible    locator=(//h5[normalize-space()='Login'])[1]
    Input Text    locator=(//input[@placeholder='Username'])[1]    text=${USER_USERNAME}    # Novo Username Criado anteriormente
    Input Text    locator=(//input[@placeholder='Password'])[1]    text=${USER_PASSWORD}    # Nova password criada anteriormente
    Capture Page Screenshot
    Clicar no botão <login>    # Keyword da User Story 1

Confirmar que está na página de dashboard após novo login
    Wait Until Element Is Visible    locator=(//h6[normalize-space()='Dashboard'])[1]
    Click Element    xpath=//a[.//span[text()='My Info']]    # Menu: My Info
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Personal Details']    # Confirmar que mudou para página My Info
    
    # Valida o conteúdo do campo firstname a partir do value do input
    Wait Until Element Is Visible    locator=name:firstName
    Sleep    2s
    ${FIRSTNAME_VALUE}=    Get Element Attribute    locator=name:firstName    attribute=value
    Should Be Equal    ${FIRSTNAME_VALUE}    ${FIRST_NAME}
    Log    Valor do First Name verificado com sucesso: ${FIRSTNAME_VALUE}

    Capture Page Screenshot
    