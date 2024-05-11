*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Otaghak.robot
Resource    ../Resources/PO/Options.robot
#robot -d results tests/NewRoomRegistration.robot


*** Test Cases ***
create a new room
    [Documentation]    user must be able to create a room with no errors
    Begin Web Test
    
    Go To    ${BROWSER}
    Click Element    //button[contains(.,'ثبت و مرحله بعد')]
    Sleep    3s
    Input Text    name=basePrice  15000.22
    Sleep    1s