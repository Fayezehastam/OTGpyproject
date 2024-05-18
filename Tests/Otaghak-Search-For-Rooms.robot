*** Settings ***
Documentation     First time using automate test
Resource        ../Resources/Common.robot
Resource        ../Resources/Otaghak.robot
Resource        ../Resources/PO/Options.robot
Suite Setup       Insert testing data
Test Setup        Begin Web Test
Test Teardown     End Web Test
Suite Teardown    Cleanup Testing Data

*** Test Cases ***
Not registered users should be able to surf through the website
    Sleep    2s
    Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[1]
    Sleep             3s
    Input Text       //input[contains(@placeholder,'انتخاب مقصد')]     دیبا
    sleep            1s
    Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[2]/button
    Wait Until Page Contains    //span[contains(.,' اجاره ویلا')]
    Sleep    10s