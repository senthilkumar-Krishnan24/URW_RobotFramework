*** Settings ***
Library     Selenium2Library
Library     String
Library     robot
Library     PageObjectLibrary
Variables      ../PageObject/NewOpportunityCreation.py

*** Variables ***

${Westfield Relationship}       Customer
${AccountRecordType}        Customer
${AccountTitle}     Bom Bom
${centerName}   Century City
${SpaceDelivery}        12/1/2023
${newRCD}       12/3/2023
${expiration}       12/2/2028

*** Keywords ***
# Create a New Agreement type

Click on the Account Navigation Link
    ${AccountLink}    Get WebElement    xpath=//span[contains(text(),'Accounts')]/self::span[@class='slds-truncate']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${AccountLink}

Click on the Drop down Icon
    Wait Until Element Is Visible    ${accountListViewDropDownIcon}  20s
    Click Element    ${accountListViewDropDownIcon}

Click on the All Account drop down option
    Wait Until Element Is Visible    ${allAccountListOption}    20s
    Click Element    ${allAccountListOption}

Select the account to create a new agreement deal
    Sleep   3s
    Click Link    ${accountName}

Click on the Related Tab
    Sleep   10s
    Wait Until Element Is Visible    ${relatedTab}  20s
    Click Element   ${relatedTab}

Click on the New Opportunity type button
    Sleep   3s
    Click Element   ${newOpportunityButton}

Click on the Next button
    Sleep   10s
    Select Frame        ${iframeXpath}
    Wait Until Element Is Visible    ${nextButton}  20s
    Click Button    ${nextButton}

Fill the New deal fields at the offer stage
    Sleep   5s
    [Arguments]     ${centerName}
    Input Text      ${centerNameInput}      ${centerName}
    Sleep    5s
    Click Element   ${centerNameOption}
    Click Button    ${useType}
    Click Element    ${useTypeListOption}
    Click Element    ${unitOrNewUnit}
    Sleep    5s
    Select Radio Button    others    01t1L00000J3CWUQA3
    Wait Until Element Is Visible    ${saveAndExitButton}  10s
    Click Button    ${saveAndExitButton}

Enter the space delivery date
    Sleep    3s
    [Arguments]     ${SpaceDelivery}
    Input Text    ${spaceDelieveryInput}     ${SpaceDelivery}

Enter the RCD date
    Set Browser Implicit Wait   3s
    [Arguments]     ${newRCD}
    Input Text  ${newRCDdate}   ${newRCD}

Enter the expiration date
    Set Browser Implicit Wait   3s
    [Arguments]     ${expiration}
    Input Text    ${expirationDate}    ${expiration}

Edit the Opportunity at the Proposal stage
    Enter the space delivery date    ${SpaceDelivery}
    Enter the RCD date    ${newRCD}
    Set Browser Implicit Wait   5s
    Enter the expiration date    ${expiration}
    Click Button    ${saveButton}
    Set Browser Implicit Wait   5s







