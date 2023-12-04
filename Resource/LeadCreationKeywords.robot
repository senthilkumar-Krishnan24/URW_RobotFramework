*** Settings ***
Library     Selenium2Library
Library     String
Library     PageObjectLibrary
Variables   ../PageObject/LeadCreationObjects.py
Variables   ../PageObject/LoginPageObjects.py

*** Variables ***

#${lastName}     Generate Random String 12 [LETTERS]
${dbaName}      DBASenthil
${phone}        3485734577
${mobile}       439753754
${email}        testemail34@gmail.com
${city}         Hosur
${postal}       634332

*** Keywords ***
## Create a new Lead

Click on the New Button
    Click Button    ${newButton}

Initialize Random Data Last Name
     ${lastName}=   Generate Random String  12  [LETTERS]
     Set Global Variable    ${lastName}
    
Enter the Last name
    [Arguments]     ${lastName}
    Input Text      ${lastNameInput}    ${lastName}

Initialize Random Data DBA Name
     ${dbaName}=   Generate Random String  12  [LETTERS]
     Set Global Variable    ${dbaName}

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

Click the Sales Branch Level3
    Click Button    ${salesBranchLevel3}
    Click Element    ${sbL3PicklistValue}

Click on the Country Code
    Click Element    ${countryCode}
    Sleep    5s
#    Select From List By Index    ${countryCodePicklist}     1
    Click Element    ${countryCodePicklist}

Enter the City
    [Arguments]     ${city}
    Input Text     ${cityInput}    ${city}

Enter the PostalCode
    [Arguments]     ${postal}
    Input Text     ${postalCodeInput}    ${postal}


Click on the Save button
    Click Button    ${saveButton}
    

## Convert the Lead into Account and Contact

Click on the Lead Link 
    Click Button    ${leadLink}

Click on the Mark as Complete Button
    Click Button    ${markAsCompleteButton}
    
Click on the DC Convert button
    Click Button    ${dcConvertButton}
    Sleep   6s

Click on the Convert button
    Click Button    ${convertButton}
    
Click on the Cancel button
    Click Button    ${cancelButton}
