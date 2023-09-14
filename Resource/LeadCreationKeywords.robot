*** Settings ***
Library     Selenium2Library
Library     PageObjectLibrary
Variables   ../PageObject/LeadCreationObjects.py
Variables   ../PageObject/LoginPageObjects.py

*** Keywords ***
Click on the New Button
    Click Button    ${newButton}
    
Enter the Last Name 
    [Arguments]     ${lastName}
    Input Text      ${lastNameInput}    ${lastName}

Enter the DBA Name
    [Arguments]     ${dbaName}
    Input Text      ${dbaNameInput}    ${dbaName}

Enter the phone number
    [Arguments]     ${phone}
    Input Text     ${phoneInput}    ${phone}

Enter the mobile number
    [Arguments]     ${mobile}
    Input Text     ${mobileInput}    ${mobile}

Enter the email
    [Arguments]     ${email}
    Input Text     ${emailInput}    ${email}
    
Click the Sales Branch Level1
    Click Button    ${salesBranchLevel1}
    Click Element   ${sbL1PicklistValue}
    #Select From List By Label   combobox-button-332     Bags & Footwear & Accessories
    #${sbL1PicklistValue}

Click the Sales Branch Level3
    Click Button    ${salesBranchLevel3}
    Click Element    ${sbL3PicklistValue}
    #Select From List By Label   Children footwear
    #${sbL3PicklistValue}
    
Click on the Save button
    Click Button    ${saveButton}
    

