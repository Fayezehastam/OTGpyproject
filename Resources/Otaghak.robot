*** Settings ***
Library           SeleniumLibrary

#robot -d results Resources/Otaghak.robot   use this to run the shit
*** Variables ***
${START_URL}=       https://www.otaghak.com/
${BROWSER}=         chrome
${PHONE_NUMBER}=    09193810769
${PASSWORD}=        123456

*** Keywords ***
Load
    Go To   about:blank ${BROWSER}
    
Verify Page Loaded
    Wait Until Page Contains   ${START_URL}

Login to Otaghak
    Click Element                    //*[@id="homePage"]/div/div[1]/div/div/div[2]/div/button/span/span
    Wait Until Page Contains         ورود یا ثبت نام در اتاقک
    Input Text                       name=phoneNumber  ${PHONE_NUMBER}
    Click Element                    //button[contains(.,'ادامه')]
    sleep                            2s
    Click Element                    //p[contains(.,'ورود با رمز‌عبور')]
    sleep                            2s
    Input Password                   //input[contains(@placeholder,'رمز عبور خود را وارد کنید')]  ${PASSWORD}
    Click Element                    //button[contains(@type,'submit')]
    Sleep                            5s
Log Out from Otaghak
    Click Element                    //img[@alt='تصویر کاربر']
    sleep                            2s
    Click Element                    //button[contains(.,'خروج از حساب کاربری')]
    Sleep                            2s
