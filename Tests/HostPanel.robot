*** Settings ***
Documentation     First time using automate test
Resource        ../Resources/Common.robot
Resource        ../Resources/Otaghak.robot
Resource        ../Resources/PO/Options.robot
Suite Setup       Insert testing data
Test Setup        Begin Web Test
Test Teardown     End Web Test
Suite Teardown    Cleanup Testing Data

*** Test Cases ***
Verify access to host panel with user type 1 or above.
Verify denial of access to host panel with user type below 1.
Verify the navigation to different pages within the host panel.
Verify the loading of content on each page.