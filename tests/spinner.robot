*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve escolher o nivel Padawan

    Start session
    Get started

    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.    xpath=//android.widget.TextView[contains(@text, "Cadastro")]
    
    Select level    Padawan

    Close session

Deve escolher o nivel Jedi

    Start session
    Get started

    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.    xpath=//android.widget.TextView[contains(@text, "Cadastro")]
    
    Select level    Jedi

    Close session

Deve escolher o nivel Sith

    Start session
    Get started

    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.    xpath=//android.widget.TextView[contains(@text, "Cadastro")]
    
    Select level    Sith

    Close session

Deve escolher o nivel Outros

    Start session
    Get started

    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.    xpath=//android.widget.TextView[contains(@text, "Cadastro")]
    
    Select level    Outros

    Close session

*** Keywords ***
Select level
    [Arguments]    ${level}

    Click Element                    id=android:id/text1
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Element                    xpath=//android.widget.TextView[@text="${level}"]