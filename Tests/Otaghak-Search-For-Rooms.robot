*** Settings ***
Documentation     First time using automate test
Resource          ../Resources/Common.robot
Resource          ../Resources/Otaghak.robot
Resource          ../Resources/PO/Options.robot
Suite Setup       Insert testing data
Test Setup        Begin Web Test
Test Teardown     End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***
${FromDateTime} =  3
${ToDateTime} =    4

*** Test Cases ***
Not registered users should be able to surf through the website
    ${Search-with-name/id section} =  set variable    xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[1]
    ${search-entry} =  set variable                   xpath=//input[@placeholder='انتخاب مقصد']
    Sleep                2s
    Click Element    ${Search-with-name/id section}
    Sleep                5s
    Input Text       ${search-entry}     رامسر
    #Click Element    Xpath=//span[contains(.,'رامسر')]
    Sleep                1s
    Click Element    Xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[2]
    Sleep                2s
    Click Element    xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[4]/div/div/div[1]/div[2]/button
    Sleep                2s
    Select Day From Calendar    ${FromDateTime}
    Sleep                2s
    Select Day From Calendar    ${ToDateTime}
    Click Element        xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[4]  
    Sleep                1s
    Double Click Element    xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[4]/div/div[1]/button
    Sleep                3s
    SearchButton
    Sleep                2s
    #Wait until plp page contains
    Sleep                10s

*** Keywords ***
Select Day From Calendar
    [Arguments]    ${day}
    Click Element    //div[contains(@class, "Day_container__hH_ho")]//div[text()="${day}"]
    #Click Element    //div[contains(@class, "Day_container__VT1GY") and contains(@class, "Day_selected__HX8kK")]//div[text()="${day}"]