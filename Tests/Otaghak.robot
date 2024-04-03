*** Settings ***
Documentation     First time using automate test
Library           SeleniumLibrary     timeout=0:00:10

#robot -d results tests/Otaghak.robot   use this to run the shit
*** Variables ***


*** Test Cases ***
Login to Otaghak
    [Documentation]                this is info about login
    [Tags]                         1006    smoke    Contacts   view    stuff
    Set Selenium Speed              .2 s
    Log                            Starting the test case!
    Open Browser                   https://otaghak.com/    chrome
    Maximize Browser Window
    Sleep                            2s
    Click Element                   //*[@id="homePage"]/div/div[1]/div/div/div[2]/div/button/span/span
    Wait Until Page Contains        ورود یا ثبت نام در اتاقک
    Input Text                      name=phoneNumber    09193810769
    Click Element                   //button[contains(.,'ادامه')]
    sleep                           2s
    Click Element                   //p[contains(.,'ورود با رمز‌عبور')]
    sleep                           2s
    Input Password                  //input[contains(@placeholder,'رمز عبور خود را وارد کنید')]    123456
    Click Element                   //button[contains(@type,'submit')]
    Sleep                           5s
    Click Element                    //img[@alt='تصویر کاربر']000
    sleep                           2s
    Click Element                    //button[contains(.,'خروج از حساب کاربری')]
    Sleep                            2s
    Close Browser
    Sleep                            2s
feature 2 test
    log        Doing feature 1
*** Keywords ***
robot -d