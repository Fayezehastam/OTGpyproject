*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Otaghak.robot
Resource    ../Resources/PO/Options.robot
#robot -d results tests/NewRoomRegistration.robot


*** Test Cases ***
User should be able to create a room
 [Documentation]   check if user can create a new room
[Tags]   OTG00005 0000001CR


    #