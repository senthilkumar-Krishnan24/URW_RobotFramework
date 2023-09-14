*** Settings ***
Library     Selenium2Library
Library     PageObjectLibrary
Variables   ../PageObject/LoginPageObjects.py

*** Keywords ***
Log into the Salesforce Application
    [Arguments]     ${SiteURL}      ${Browser}      ${username}     ${password}
    Open Browser        ${SiteURL}      ${Browser}
    Maximize Browser Window
    Sleep    2s
    Input Text      ${txt_loginUserName}        ${username}
    Input Text      ${txt_loginPassword}        ${password}
    click button        ${btn_Login}






