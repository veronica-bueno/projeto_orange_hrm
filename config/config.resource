*** Settings ***
Documentation    Configurações Globais para o projeto de automação OrangeHRM.
...              Este arquivo define variáveis de ambiente, credenciais e 
...              Keywords de setup/teardown comuns.

Library    SeleniumLibrary

*** Variables ***
${URL_PRINCIPAL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}    chrome
${ADMIN_USERNAME}    Admin    # Username do admin para login
${ADMIN_PASSWORD}    admin123    # Password do admin para login

${USER_USERNAME}    fernanda_souza    # Nome de usuário para cadastro de novo usuário
${USER_PASSWORD}    fernanda123    # Senha do usuário para cadastro de novo usuário

*** Keywords ***
Abrir a página Orange HRM
    Open Browser    ${URL_PRINCIPAL}    ${BROWSER}
    Maximize Browser Window
