*** Settings ***
Documentation    First time using automate test
Library   SeleniumLibrary


*** Variables ***
${website_url}              https://otaghak.com/
${otp_entry_wait_time}      10
*** Test Cases ***
Login to Otaghak
    [Tags]    smoke
    Open Browser    https://otaghak.com/   chrome
    Wait Until Page Contains    ورود / ثبت‌نام
    Maximize Browser Window
    Click Element   //*[@id="homePage"]/div/div[1]/div/div/div[2]/div/button/span/span
    Wait Until Page Contains    ورود یا ثبت نام در اتاقک
    Input Text      name=phoneNumber    09999884617
    Click Element   //button[contains(.,'ادامه')]
    sleep           2s
    Sleep    ${otp_entry_wait_time}
    Sleep    2s

    Wait Until Page Contains    ثبت نام در اتاقک
    Input Text    //input[@name='firstName']    فازی
    Click Element    //input[@name='lastName']
    Input Text    //input[@name='lastName']    غلامی
    Click Element    //input[@tabindex='3']
    Input Text    //input[@tabindex='3']     123456
    Click Element    //input[@tabindex='4']
    Input Text    //input[@tabindex='4']  123456
    Click Element    //button[@type='submit']
    Sleep    2s