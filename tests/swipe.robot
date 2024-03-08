*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve poder remover o Darth Vader

    Start session
    Get started

    Navigate to        Star Wars
    Go to item         Lista    Darth Vader    xpath=//android.widget.TextView[contains(@text, "Lista")]

    ${positions}        Get Element Location        xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}        Set Variable    865
    ${start_y}        Set Variable    658
    ${offset_x}       Set Variable    391
    ${offset_y}       Set Variable    654

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}
    
    Close session