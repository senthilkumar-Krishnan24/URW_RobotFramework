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

    Scroll Element Into View    xpath=//button[@name='Sales_Branch_Level_1_WF__c']
    Wait Until Element Is Visible   xpath=//button[@name='Sales_Branch_Level_1_WF__c']
    Click the Sales Branch Level1
    Scroll Element Into View    xpath=//button[@name='Sales_Branch_Level_3_WF__c']
    Wait Until Element Is Visible   xpath=//button[@name='Sales_Branch_Level_3_WF__c']
    Click the Sales Branch Level3

    Scroll Element Into View    xpath=//input[@name='country']
    Sleep   5s
    Wait Until Element Is Visible   xpath=//input[@name='country']
    Click on the Country Code
    Enter the City    ${city}
    Enter the PostalCode    ${postal}
    Sleep   5s

    #Click on the Save button
    ${element}  Get WebElement    xpath=//button[contains(text(),'Save')]/self::button[@class='slds-button slds-button_brand']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${element}



    #Convert the lead into an account and a contact
    
    Sleep   5s
    Click on the DC Convert button
    Switch Window   title=Convert - Duplicate Check for Salesforce | Salesforce
    Select Frame    xpath=//iframe[@title='accessibility title']
    Sleep   5s
    Click on the Convert button








