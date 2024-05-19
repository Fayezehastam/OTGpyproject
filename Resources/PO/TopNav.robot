*** Settings ***
Library    SeleniumLibrary
Resource    ../PO/Options.robot

*** Keywords ***
#Click on the banner
Otaghak Logo
    Click Element    xpath=//*[@id="homePage"]/div/div[1]/div/div/div[1]/a

Host Panel
    Click Element    xpath=//*[@id="homePage"]/div/div[1]/div/div/div[2]/a[3]

Download app
    Click Element    xpath=document.querySelector("#homePage > div > div.w-full.fixed.bg-gradient-to-b.from-white.via-\\[\\#ffffff85\\].to-transparent.left-0.z-20 > div > div > div.w-6\\/12.flex.flex-row-reverse.flex-nowrap > a:nth-child(3)")

CallCenter
    Click Element    xpath=//*[@id="homePage"]/div/div[1]/div/div/div[2]/a[1]
OptionsButton
    Click Element    xpath=//*[@id="homePage"]/div/div[1]/div/div/div[2]/div

