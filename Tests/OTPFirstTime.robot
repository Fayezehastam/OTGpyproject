*** Settings ***
Documentation     First time using automate test
Resource        ../Resources/Common.robot
Resource        ../Resources/Otaghak.robot

Suite Setup       Insert testing data
Test Setup        Begin Web Test
Test Teardown     End Web Test
Suite Teardown    Cleanup Testing Data

#robot -d results tests/OTPFirstTime.robot
*** Test Cases ***
User Should be able to sign in successfully with a new phone number
  [Documentation]         Initial Keywords
  [Tags]                  OTG000001   SI000001
  otaghak.Sign In To Otaghak
  Sleep    5s
