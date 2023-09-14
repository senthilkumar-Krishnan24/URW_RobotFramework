*** Settings ***
Library     Selenium2Library
Resource    ../Resource/LoginKeywords.robot
Resource    ../Resource/LeadCreationKeywords.robot


*** Variables ***
${Browser}      Firefox
${SiteURL}      https://westfield--sit.sandbox.my.salesforce.com/?login
${username}     senthilkumar.k@tavant.com.wfprod.sit
${password}      welcomewelcomewelcomewelcome2023
${lastName}     Senthilkumar
${dbaName}      DBASenthil
${phone}        3485734577
${mobile}       439753754
${email}        testemail34@gmail.com

*** Test Cases ***
Create_New_Account_and_Contact_from_Lead
    Log into the Salesforce Application    ${SiteURL}    ${Browser}    ${username}    ${password}
    Set Browser Implicit Wait   4s
    ${ele}    Get WebElement    xpath=//*[contains(text(),'Leads')]/self::span[@class='slds-truncate']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    Set Browser Implicit Wait   4s
    Wait Until Element Is Visible   xpath=//a[@title='New']/self::a[@class='forceActionLink']
    ${elem}  Get WebElement    xpath=//a[@title='New']/self::a[@class='forceActionLink']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${elem}
    Set Selenium Implicit Wait    6s
    Sleep    5s
    Switch Window   title=New Lead | Salesforce
    Wait Until Element Is Visible   xpath=//input[@name='lastName']
    Enter the Last Name    ${lastName}
    Enter the DBA Name    ${dbaName}
    Enter the phone number    ${phone}
    Enter the mobile number    ${mobile}
    Enter the email    ${email}
    Wait Until Element Is Visible   xpath=//button[@name='Sales_Branch_Level_1_WF__c']
    Click the Sales Branch Level1
    Wait Until Element Is Visible   xpath=//button[@name='Sales_Branch_Level_3_WF__c']
    Click the Sales Branch Level3
    Click on the Save button





