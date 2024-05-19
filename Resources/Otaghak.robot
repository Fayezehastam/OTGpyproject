*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/PO/Options.robot
#robot -d results Resources/LoginFlow.robot   use this to run the shit
*** Variables ***
${START_URL}=                          https://develop.otaghak.com/
${BROWSER}=                            chrome
${PHONE_NUMBER}=                       09193810769
${VALID_PASSWORD}=                     123456
${OPTIONS_BUTTON} =                    xpath=//span[contains(@class,'SNVh')]
${4TH_HEADING_SIGNIN} =                Xpath=//h4[contains(@class,'Typography_subtitle2__8D7pQ text-Asphalt')]
${MAIN_HEADING_TITLE} =                Xpath= //h1[contains(.,'اجاره ویلا و سوئیت در سراسر ایران')]
${PHONE_NUMBER_SECTION} =              name=phoneNumber
${SUBMIT-VALID_PHONE_NUMBER} =         Xpath=//button[@type='submit']
${LOGIN_WITH_PASSWORD_BUTTON} =        Xpath=//button[contains(.,'ورود با رمز‌عبور')]
${ENTER_PASSWORD_SECTION} =            Xpath=//input[@type='password']
${SUBMIT_PASSWORD_BUTTON} =            Xpath=//button[contains(@type,'submit')]
${LOGOUT_BUTTON} =                     Xpath=//span[@class='UserMenu_signout__pl060']
${SEARCH_SECTION} =                    Xpath=//*[@id="TopBannerWithSearchBox"]/div[2]/div[2]/div/div[1]/div[1]/div[1]
${SEARCH_SECTION_DESTINATION_ENTRY} =  Xpath=//input[@placeholder='انتخاب مقصد']
${SIGN_IN_H2_ELEMENT} =                //h4[contains(@class,'8D7pQ text-Asphalt')]


*** Keywords ***
Load
    Open Browser                     ${START_URL}  ${BROWSER}
    Maximize Browser Window

Verify Page Loaded
    Wait Until Page Contains         ${MAIN_HEADING_TITLE}

Login to Otaghak
    Click Element                    ${OPTIONS_BUTTON}
    Sleep    10s
    Input Text                       ${PHONE_NUMBER_SECTION}  ${PHONE_NUMBER}
    Click Element                    ${SUBMIT-VALID_PHONE_NUMBER}
    sleep                            2s
    Click Element                    ${LOGIN_WITH_PASSWORD_BUTTON}
    sleep                            2s
    Input Password                   ${ENTER_PASSWORD_SECTION}  ${VALID_PASSWORD}
    Click Element                    ${SUBMIT_PASSWORD_BUTTON}
    Sleep                            5s
Forget password
        [Tags]  smoke
    ${otp_entry_wait_time} =  set variable      10s
    ${enter-password}=        Create List       //input[contains(@name,'password')]     //input[contains(@name,'confirmPassword')]      //button[@type='submit']
    ${Forget-Password} =      set variable      xpath=//p[contains(.,'فراموشی رمز عبور')]
    Click Element                    ${OPTIONS_BUTTON}
    Sleep                            5s
    Input Text                       ${PHONE_NUMBER_SECTION}  ${PHONE_NUMBER}
    Click Element                    ${SUBMIT-VALID_PHONE_NUMBER}
    Sleep                            5s
    Click Element                    ${LOGIN_WITH_PASSWORD_BUTTON}
    sleep                            2s
    Click Element                    ${Forget-Password}
    Sleep                            ${otp_entry_wait_time}
    Input Text                       ${enter-password}[0]     ${VALID_PASSWORD}
    Input Text                       ${enter-password}[1]     ${VALID_PASSWORD}
    Click Element                    ${enter-password}[2]
    Sleep                            5s

Log Out from Otaghak
    Click Element                    ${OPTIONS_BUTTON}
    sleep                            2s
    Click Element                    ${LOGOUT_BUTTON}
    Sleep                            2s
Search for Room
    Click Element                    ${SEARCH_SECTION}
    Input Text                       ${SEARCH_SECTION_DESTINATION_ENTRY}




Sign In To Otaghak
   [Tags]    smoke
   ${otp_entry_wait_time} =  set variable      10
   ${new-phone-number} =     set variable   09381501486


    Click Element                    Xpath=//*[@id="homePage"]/div/div[1]/div/div/div[2]/div
    Sleep                            3s
    Input Text                      ${PHONE_NUMBER_SECTION}        ${new-phone-number}
    Click Element                   ${SUBMIT-VALID_PHONE_NUMBER}
    sleep                           2s
    Sleep                           ${otp_entry_wait_time}
    Sleep                           2s

    #Wait Until Page Contains        ${SIGN_IN_H2_ELEMENT}
    Input Text                      //input[@name='firstName']    فازی
    Click Element                   //input[@name='lastName']
    Input Text                      //input[@name='lastName']    غلامی
    Click Element                   //input[@tabindex='3']
    Input Text                      //input[@tabindex='3']     123456
    Click Element                   //input[@tabindex='4']
    Input Text                      //input[@tabindex='4']  123456
    Click Element                   //button[@type='submit']
    Sleep    2s





