*** Settings ***
Documentation     First time using automate test
Resource          Resources/Common.robot
Resource          Resources/Otaghak.robot

#robot -d results tests/Otaghak.robot   use this to run the shit
*** Test Cases ***
User Must be able to Logon And LogOut Successfully
  [Documentation]        Initial Keywords
  [Tags]                smoke  search
  common.Begin Web Test
  otaghak.Login to Otaghak
  otaghak.Log Out from Otaghak
  common.End Web Test


