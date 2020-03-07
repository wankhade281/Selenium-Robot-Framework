*** Settings ***
Library  SeleniumLibrary
Variables  ../pageobjects/locators.py

*** Keywords ***
Open my Browser
     [Arguments]    ${SiteUrl}      ${Browser}
     open browser   ${SiteUrl}      ${Browser}
     maximize browser window

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]  ${password}
    Input Text   ${txt_loginUserPass}   ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    title should be     (1) LinkedIn

close my browsers
    close all browsers