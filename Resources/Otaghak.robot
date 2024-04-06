*** Settings ***
Documentation     Initial Keywords
Library           SeleniumLibrary


#robot -d results Resources/Otaghak.robot   use this to run the shit

*** Keywords ***
Login to Otaghak
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
Log Out from Otaghak
    Click Element                   //img[@alt='تصویر کاربر']
    sleep                           2s
    Click Element                    //button[contains(.,'خروج از حساب کاربری')]
    Sleep                            2s
