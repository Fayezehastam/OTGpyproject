*** Settings ***
Library    SeleniumLibrary
Resource    ../PO/Options.robot

*** Keywords ***
#Click on the banner
Host Panel
    Click Element    //span[contains(.,'میزبان شوید')]

Download app
    Click Element    //span[contains(.,'دانلود اپلیکیشن')]

CallCenter
    Click Element    //span[contains(.,'پشتیبانی')]
OptionsButton
    Click Element    //img[contains(@alt,'تصویر کاربر')]

Options.OptionsButton