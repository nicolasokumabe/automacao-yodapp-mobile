*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve selecionar a opcao Ruby

    Start session
    Get started
    Navigate to   Check e Radio
    Go to item    Botões de radio    Escolha sua linguagem preferida    xpath=//android.widget.TextView[contains(@text, "Botões de radio")]

    Click Element    xpath=//android.widget.RadioButton[contains(@text, "Ruby")]
    Sleep    3
    
    Close session