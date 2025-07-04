*** Settings ***
Documentation    Keywords para os testes da página Dashboard.
Library    SeleniumLibrary
Resource    ../config/config.resource
Resource    login.resource


*** Variables ***
 

*** Keywords ***
Validar se itens do menu lateral estão visíveis e clicaveis
    Realizar o login com sucesso    CLOSE_BROWSER=${False}  
    Wait Until Element Is Visible    locator=//input[@placeholder='Search']    # Barra de pesquisa
    Element Should Be Visible    locator=//input[@placeholder='Search']
    Click Element    xpath=//a[.//span[text()='Admin']]    # Menu: Admin
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Admin']    # Confirmar que mudou para página Admin
    Capture Page Screenshot
    Click Element    xpath=//a[.//span[text()='PIM']]    # Menu: PIM
    Wait Until Element Is Visible    locator=//h6[normalize-space()='PIM']    # Confirmar que mudou para página PIM
    Click Element    xpath=//a[.//span[text()='Leave']]    # Menu: Leave
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Leave']    # Confirmar que mudou para página Leave
    Click Element    xpath=//a[.//span[text()='Time']]    # Menu: time
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Time']    # Confirmar que mudou para página time
    Click Element    xpath=//a[.//span[text()='Recruitment']]    # Menu: Recruitment
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Recruitment']    # Confirmar que mudou para página Recruitment
    Click Element    xpath=//a[.//span[text()='My Info']]    # Menu: My Info
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Personal Details']    # Confirmar que mudou para página Personal Details
    Click Element    xpath=//a[.//span[text()='Performance']]    # Menu: Performance
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Performance']    # Confirmar que mudou para página Performance
    Click Element    xpath=//a[.//span[text()='Dashboard']]    # Menu: Dashboard
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Dashboard']    # Confirmar que mudou para página Dashboard
    Click Element    xpath=//a[.//span[text()='Directory']]    # Menu: Directory
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Directory']    # Confirmar que mudou para página Directory
    Click Element    xpath=//a[.//span[text()='Maintenance']]    # Menu: Maintenance
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Administrator Access']    # Confirmar que mudou para página de Administrator Access
    Capture Page Screenshot
    Go Back
    Click Element    xpath=//a[.//span[text()='Claim']]    # Menu: Claim
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Claim']    # Confirmar que mudou para página Claim
    Click Element    xpath=//a[.//span[text()='Buzz']]    # Menu: Buzz
    Wait Until Element Is Visible    locator=//h6[normalize-space()='Buzz']    # Confirmar que mudou para página Buzz
    Go Back

Validar botão do menu lateral
    Double Click Element    locator=//button[@role='none']    # Botão lateral que "esconde" o menu

Validar campo de pesquisa
    Input Text    locator=//input[@placeholder='Search']    text=Performance
    Sleep    1s
    Capture Page Screenshot

Validar cabeçalho
    Element Should Be Visible    locator=//input[@placeholder='Search']
    Click Element    locator=//input[@placeholder='Search']
    Wait Until Element Is Visible    xpath=//span[@class='oxd-userdropdown-tab']    # Espera elemento ficar visivel antes de selecionar
    Click Element    xpath=//span[@class='oxd-userdropdown-tab']
    Click Element    xpath=//a[normalize-space()='About']  # Opção About no Menu/Cabeçalho
    Wait Until Element Is Visible    locator=//h6[normalize-space()='About']    # Espera abrir a tela de "About" e confirma
    Sleep    1s    # Para carregar as informações antes do Screenshot
    Capture Page Screenshot
    Click Element    locator=//button[normalize-space()='×']    # Fecha a tela de "About" para acessar outras opções do Menu/Cabeçalho
    Wait Until Element Is Visible    xpath=//span[@class='oxd-userdropdown-tab']
    Click Element    xpath=//span[@class='oxd-userdropdown-tab']    # Opção About no Menu/Cabeçalho
    Wait Until Element Is Visible    locator=//a[normalize-space()='Support']    # Opção "Support" no menu/cabeçalho 
    Click Element    xpath=//a[normalize-space()='Support']
    Wait Until Page Contains    text=Customer Support
    Capture Page Screenshot


