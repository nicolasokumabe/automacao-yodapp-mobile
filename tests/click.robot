*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve realizar um clique simples

    Start session
    Get started
    Navigate to   Clique em Botões
    Go to item    Clique simples    Botão clique simples    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.TextView
    
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.Button
    Wait Until Page Contains        Isso é um clique simples

    Close session

Deve realizar um clique longo
    [Tags]    long

    Start session
    Get started
    Navigate to   Clique em Botões
    Go to item    Clique longo    Botão clique longo    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.TextView
    
    ${locator}   Set Variable    id=com.qaxperience.yodapp:id/long_click

    ${positions}    Get Element Location          ${locator}

    Tap With Positions    1000    ${${positions}[x], ${positions}[y]}
    Wait Until Page Contains        Isso é um clique longo

    Close session