*** Settings ***
Documentation     Initial Keywords
Library           SeleniumLibrary

#robot -d results Resources/Common.robot   use this to run the shit


*** Keywords ***
Begin Web Test
    Log                            Starting the test case!
    Open Browser                   about:blank   chrome
    Maximize Browser Window
    Go To                           https://www.otaghak.com/
    Sleep                            2s

End Web Test
    Close Browser
    Log        تموم شد
