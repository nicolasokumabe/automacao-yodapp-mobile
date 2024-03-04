*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}        QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

Get started
    Wait Until Page Contains         ${START}    7
    Click Element                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextSwitcher/android.widget.Button

Navigate to
    [Arguments]        ${item_text}
    ${hamburger}    Set Variable     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hamburger}
    Click Element                    ${hamburger}

    ${menu_item}    Set Variable     xpath=//*[@resource-id="com.qaxperience.yodapp:id/rvNavigation"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${menu_item}
    Click Element                    ${menu_item}
    
Go to item
    [Arguments]        ${item}    ${checkpoint}    ${xpath_click}
    Wait Until Page Contains        ${item}    5
    Click Element                   ${xpath_click}
    Wait Until Page Contains        ${checkpoint}
    
Close session
    Close Application