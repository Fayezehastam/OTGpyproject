*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/Otaghak.robot

#robot -d results Resources/Common.robot   use this to run the shit

*** Keywords ***
Begin Web Test
    Open Browser                   about:blank   ${BROWSER}
    Maximize Browser Window
    Go To                           ${START_URL}
    Sleep                            2s

End Web Test
    Close Browser
    Log        تموم شد


Insert testing data
    Log    S the fuckin tart
    
    
Cleanup Testing Data
    log    And His Name is John Cena