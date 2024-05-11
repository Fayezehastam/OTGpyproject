*** Settings ***
Library           SeleniumLibrary

#robot -d results Resources/OTGLOGIN.robot   use this to run the shit
*** Variables ***
${START_URL}=                          https://otaghak.com/
${BROWSER}=                            chrome
${PHONE_NUMBER}=                       09193810769
${VALID_PASSWORD}=                     123456
${OPTIONS_BUTTON} =                    xpath=//span[contains(@class,'SNVh')]
${4TH_HEADING_SIGNIN} =                Xpath=//h4[contains(@class,'Typography_subtitle2__8D7pQ text-Asphalt')]
${MAIN_HEADING_TITLE} =                Xpath= //h1[contains(@class,'JESPs w-fit text-white homeTitle')]
${PHONE_NUMBER_SECTION} =              name=phoneNumber
${VALID_SUBMIT-PHONE_NUMBER} =         Xpath=//button[@type='submit']
${LOGIN_WITH_PASSWORD_BUTTON} =        Xpath=//button[contains(.,'ورود با رمز‌عبور')]
${ENTER_PASSWORD_SECTION} =            Xpath=//input[@type='password']
${SUBMIT_PASSWORD_BUTTON} =            Xpath=//button[contains(@type,'submit')]
${LOGOUT_BUTTON} =                     Xpath=//span[@class='UserMenu_signout__pl060']
${SEARCH_SECTION} =                    Xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[1]/div[1]
${SEARCH_SECTION_DESTINATION_ENTRY} =  Xpath=//input[@placeholder='انتخاب مقصد'] 
*** Keywords ***
Load
    Open Browser                     ${START_URL}  ${BROWSER}
    Maximize Browser Window

Verify Page Loaded
    Wait Until Page Contains         ${MAIN_HEADING_TITLE}

Login to Otaghak
    Click Element                    ${OPTIONS_BUTTON}
    Sleep    3s
    Input Text                       ${PHONE_NUMBER_SECTION}  ${PHONE_NUMBER}
    Click Element                    ${VALID_SUBMIT-PHONE_NUMBER}
    sleep                            2s
    Click Element                    ${LOGIN_WITH_PASSWORD_BUTTON}
    sleep                            2s
    Input Password                   ${ENTER_PASSWORD_SECTION}  ${VALID_PASSWORD}
    Click Element                    ${SUBMIT_PASSWORD_BUTTON}
    Sleep                            5s
Log Out from Otaghak
    Click Element                    ${OPTIONS_BUTTON}
    sleep                            2s
    Click Element                    ${LOGOUT_BUTTON}
    Sleep                            2s
Search for Room
    Click Element                    ${SEARCH_SECTION}
    Input Text                       ${SEARCH_SECTION_DESTINATION_ENTRY}