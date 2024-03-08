*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve poder remover o Darth Vader

    Start session
    Get started

    Navigate to        Star Wars
    Go to item         Lista    Darth Vader    xpath=//android.widget.TextView[contains(@text, "Lista")]
    
    ${position_start}        Get Element Location        xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]
    ${position_end}          Get Element Location        xpath=//android.widget.TextView[@text="Darth Vader"]/../..//*[contains(@class, "android.widget.ImageView")]

    ${start_x}        Set Variable    ${position_start}[x]
    ${start_y}        Set Variable    ${position_start}[y]
    ${offset_x}       Set Variable    ${position_end}[x]
    # ${offset_x}       Evaluate    ${position_start}[x] - 650
    ${offset_y}       Set Variable    ${position_start}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}
    
    Click Element    id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader

    Close session