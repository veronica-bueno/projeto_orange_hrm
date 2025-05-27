*** Settings ***
Documentation    Configurações Globais
Library    SeleniumLibrary

*** Variables ***
${URL_PRINCIPAL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}    chrome
${ADMIN_USERNAME}    Admin
${ADMIN_PASSWORD}    admin123

${USER_USERNAME}    fernanda_souza
${USER_PASSWORD}    fernanda123

*** Keywords ***
Abrir a página Orange HRM
    Open Browser    ${URL_PRINCIPAL}    ${BROWSER}
    Maximize Browser Window
