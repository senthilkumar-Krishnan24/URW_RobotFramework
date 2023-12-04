*** Settings ***
Library     Selenium2Library
Library     PageObjectLibrary
Resource    ../Resource/NewOpportunityCreationKeywords.robot
Resource    ../Resource/LoginKeywords.robot


*** Test Cases ***
Create_a_New_Agreement_type
    Log into the Salesforce Application    ${SiteURL}    ${Browser}    ${username}    ${password}
    Set Browser Implicit Wait   5s
    Sleep   5s
    Click on the Account Navigation Link
    Click on the Drop down Icon
    Click on the All Account drop down option
    Select the account to create a new agreement deal
    Click on the Related Tab
    Click on the New Opportunity type button
    Click on the Next button
    Fill the New deal fields at the offer stage    ${centerName}
    Edit the Opportunity at the Proposal stage


