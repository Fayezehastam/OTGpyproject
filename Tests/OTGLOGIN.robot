*** Settings ***
Documentation     First time using automate test
Resource        ../Resources/Common.robot
Resource        ../Resources/Otaghak.robot
Resource        ../Resources/PO/Options.robot
Suite Setup       Insert testing data
Test Setup        Begin Web Test
Test Teardown     End Web Test
Suite Teardown    Cleanup Testing Data

#robot -d results tests/OTGLOGIN.robot   use this to run the shit
*** Test Cases ***
User should be able to Login And LogOut Successfully
  [Documentation]         Initial Keywords
  [Tags]                  smoke  search
  otaghak.Login to Otaghak
  Options.OptionsButton
  Options.Log Out from Otaghak

#robot  -d -v BROWSER: Chrome -v  START_URL:https://develop.otaghak.com  tests/OTGLOGIN.robot
