*** Settings ***
Library     Selenium2Library
Library     PageObjectLibrary
Variables   ../PageObject/LoginPageObjects.py

*** Variables ***

${Browser}      Chrome
${SiteURL}      https://westfield--sit.sandbox.my.salesforce.com/?login
${username}     senthilkumar.k@tavant.com.sitdm
${password}     welcomewelcomewelcomewelcome2024

*** Keywords ***
Log into the Salesforce Application
    [Arguments]     ${SiteURL}      ${Browser}      ${username}     ${password}
    Open Browser        ${SiteURL}      ${Browser}
    Maximize Browser Window
    Sleep    2s
    Input Text      ${txt_loginUserName}        ${username}
    Input Text      ${txt_loginPassword}        ${password}
    click button        ${btn_Login}






