*** Settings ***
#Library     SeleniumLibrary
Library     Selenium2Library
Resource    ../Resource/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteURL}      https://westfield--sit.sandbox.my.salesforce.com/?login
${user}     senthilkumar.k@tavant.com.wfprod.sit
${pwd}      welcomewelcomewelcomewelcome2023


*** Test Cases ***
Log into the Salesforce Application
    Open my browser     ${SiteURL}      ${Browser}
    Enter username      ${user}
    Enter password      ${pwd}
    Click signIn
    Sleep   3s
    Wait until element appears after login
    Verify Successful Login
    Close my browsers





