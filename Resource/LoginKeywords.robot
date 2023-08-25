*** Settings ***
Library     Selenium2Library
Library     PageObjectLibrary
Variables   ../PageObject/LoginPageObjects.py

*** Keywords ***
Open my browser
    [Arguments]     ${SiteURL}      ${Browser}
    open browser        ${SiteURL}      ${Browser}
    Maximize Browser Window

Enter username
    [Arguments]     ${username}
    Input Text      ${txt_loginUserName}        ${username}

Enter password
    [Arguments]     ${password}
    Input Text      ${txt_loginPassword}        ${password}

Click signIn
    click button        ${btn_Login}

Wait until element appears after login
    Wait Until Element Is Visible       ${titleName}

Verify Successful Login
    Title should be     Home | Salesforce

Close my browsers
    close all browsers


