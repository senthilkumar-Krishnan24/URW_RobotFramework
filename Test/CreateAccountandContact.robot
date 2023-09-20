*** Settings ***
Library     Selenium2Library
Library     String
Resource    ../Resource/LoginKeywords.robot
Resource    ../Resource/LeadCreationKeywords.robot


*** Test Cases ***
Create_New_Account_and_Contact_from_Lead

    # Create a new Lead

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
    Initialize Random Data Last Name
    Enter the Last name     ${lastName}
    Initialize Random Data DBA Name
    Enter the DBA Name    ${dbaName}
    Enter the phone number    ${phone}
    Enter the mobile number    ${mobile}
    Enter the email    ${email}
    Wait Until Element Is Visible   xpath=//button[@name='Sales_Branch_Level_1_WF__c']
    Click the Sales Branch Level1
    Wait Until Element Is Visible   xpath=//button[@name='Sales_Branch_Level_3_WF__c']
    Click the Sales Branch Level3
    Wait Until Element Is Visible   xpath=//input[@name='country']
    Click on the Country Code
    Click on the Save button

    #Convert the lead into account and contact
    
    Sleep   10s
    Click on the DC Convert button
    Switch Window   title=Convert - Duplicate Check for Salesforce | Salesforce
    Select Frame    xpath=//iframe[@title='accessibility title']
    Sleep   10s
    Click on the Convert button








