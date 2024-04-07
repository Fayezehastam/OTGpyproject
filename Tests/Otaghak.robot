*** Settings ***
Documentation     First time using automate test
Resource        ../Resources/Common.robot
Resource        ../Resources/Otaghak.robot
Resource        ../Resources/PO/Options.robot
Suite Setup       Insert testing data
Test Setup        Begin Web Test
Test Teardown     End Web Test
Suite Teardown    Cleanup Testing Data
#robot -d results tests/Otaghak.robot   use this to run the shit
*** Test Cases ***
User Must be able to Logon And LogOut Successfully
  [Documentation]        Initial Keywords
  [Tags]                smoke  search
  otaghak.Login to Otaghak
  otaghak.Log Out from Otaghak


