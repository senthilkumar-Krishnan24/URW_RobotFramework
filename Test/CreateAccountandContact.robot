*** Settings ***
Library     Selenium2Library
Resource    ../Test/LoginBrowser.robot

*** Test Cases ***
Create_New_Account_and_Contact_from_Lead
    Log into the Salesforce Application
    #Wait Until Element Is Visible   xpath=//*[contains(text(),'Leads')]/self::span[@class='slds-truncate']
    Sleep    5s
    ${ele}    Get WebElement    xpath=//*[contains(text(),'Leads')]/self::span[@class='slds-truncate']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    Close Browser
