*** Settings ***
Documentation     Search for Room
Library           DateTime
Resource        ../Resources/Common.robot
Resource        ../Resources/Otaghak.robot


##robot -d results Tests/Pdp-Navigation.robot
*** Variables ***


*** Test Cases ***
search for rooms
    Load
    Sleep    1s
    Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[1]/div[1]
    Sleep    3s
    Input Text    //input[@placeholder='انتخاب مقصد']    تهران
    Sleep    3s
    Click Element    //div[contains(.,'تاریخ ورود')]
    Click Element    //div[contains(@class,'DgxDp ')]
    Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[4]/div/div/div[2]/div[1]/div[3]/div[25]/div[1]   # Click on the desired future date
    sleep    2s
    Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[4]/div/div/div[2]/div[1]/div[3]/div[21]
    Sleep    2s
    Double Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[4]/div/div[1]/button
    Click Element    //*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[2]/button
    Sleep    2s
    Click Element    //button[contains(.,'رزرو آنی')]
    sleep    5s
    Click Link    https://develop.otaghak.com/room/2409237/?checkIn=2024-02-07&checkOut=2024-02-09&person=2
    Sleep    2s
    Close Browser



