*** Settings ***
Documentation     Test script for Push Notification API
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       https://develop.core.otaghak.com/api  # Updated base URL
${HEADERS}        Content-Type=application/json

*** Test Cases ***
Send Google Push Notification Test
    [Documentation]    Test sending Google push notification
    [Tags]    push-notification
    Create Google Push Notification    open_plp    برای رزرو بهترین اقامتگاه های کیش همین حالا اقدام کن    نوتیفیکیشن برای تست اسکریپت    https://develop.otaghak.com/city/kish/    https://s3.afranet.net/otg-images/Web/images/homepageimages/1/kish.jpg    https://s3.afranet.net/otg-images/Web/images/homepageimages/1/kish.jpg    NULL    NULL

*** Keywords ***
Create Google Push Notification
    [Arguments]    ${type}    ${title}    ${description}    ${deeplink}    ${smallImageLink}    ${largeImageLink}    ${roomId}    ${bookingId}
    ${payload}    Create Payload    ${type}    ${title}    ${description}    ${deeplink}    ${smallImageLink}    ${largeImageLink}    ${roomId}    ${bookingId}
    ${response}    Post Request    ${BASE_URL}/Chat/SendGooglePushNotification    data=${payload}    headers=${HEADERS}
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be True    ${response.json()['success']}

Create Payload
    [Arguments]    ${type}    ${title}    ${description}    ${deeplink}    ${smallImageLink}    ${largeImageLink}    ${roomId}    ${bookingId}
    ${payload} =    Create Dictionary    type=${type}    title=${title}    description=${description}    deeplink=${deeplink}    smallImageLink=${smallImageLink}    largeImageLink=${largeImageLink}    roomId=${roomId}    bookingId=${bookingId}
   RETURN  ${payload}

Post Request
    [Arguments]    ${url}    ${data}    ${headers}
    ${response}    Post Request    ${url}    json=${data}    headers=${headers}
    RETURN    ${response}
