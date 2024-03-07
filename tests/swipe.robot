*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve poder remover o Darth Vader

    Start session
    Get started

    Navigate to        Star Wars
    Go to item         Lista    Darth Vader    xpath=//android.widget.TextView[contains(@text, "Lista")]

    Swipe    865    658    391    654
    
    Close session