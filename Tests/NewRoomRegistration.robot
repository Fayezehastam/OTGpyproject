*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Otaghak.robot
Resource    ../Resources/PO/Options.robot
#robot -d results tests/NewRoomRegistration.robot


*** Test Cases ***
create a new room
    [Documentation]    user must be able to create a room with no errors
    Begin Web Test
    Login To Otaghak
    OptionsButton
    Sleep    1s
    HostRooms
    Sleep    2s
    Click Element     //a[contains(.,'افزودن اقامتگاه جدید')]
    Sleep    2s
    Select Checkbox    ${locator}
    Sleep    1s
    Click Element    //p[contains(.,'دربست')]
    Sleep    1s
    Click Element    //p[contains(.,'ثبت و مرحله بعد')]
    Sleep    3
    OptionsButton
    Click Element    //p[contains(.,'ایران')]
    Click Element    //select[contains(@name,'stateId')]
    Click Element    //p[contains(.,'برن')]
    Click Element    //select[contains(@name,'cityId')]
    Click Element    //p[contains(.,'برن')]
    Click Element    //textarea[contains(@name,'address')]
    Input Text        name=Address قالب استاندارد وارد کردن آدرس کامل اقامتگاه به این شکل است: نام شهر یا استان، نام منطقه، نام اتوبان یا خیابان یا بلوار، نام کوچه، شماره پلاک به همراه شماره واحد (در صورت چند واحدی بودن ساختمان)
*** Keywords ***
    ${locator} =  /html/body/div[1]/main/main/div/div/div[2]/div[1]/div/div[1]/div



    #