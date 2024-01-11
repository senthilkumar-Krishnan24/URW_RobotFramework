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
${projectedSales}       20000

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
    Sleep   5s
    Wait Until Element Is Visible    ${relatedTab}  20s
    Click Element   ${relatedTab}

Click on the New Opportunity type button
    Sleep   3s
    Click Element   ${newOpportunityButton}

Click on the Next button
    Sleep   5s
    Select Frame        ${iframeXpath}
    Wait Until Element Is Visible    ${nextButton}  20s
    Click Button    ${nextButton}

Fill the New deal fields at the offer stage
    Sleep   3s
    [Arguments]     ${centerName}
    Input Text      ${centerNameInput}      ${centerName}
    Sleep    3s
    Click Element   ${centerNameOption}
    Click Button    ${useType}
    Click Element    ${useTypeListOption}
    Click Element    ${unitOrNewUnit}
    Sleep    3s
    Select Radio Button    others    01t1L00000J3CWUQA3
    Wait Until Element Is Visible    ${saveAndExitButton}  5s
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

Enter the Projected Sales field on the deal sheet
    Sleep   5s
    Select Frame        ${iframeXpath}
    Sleep    5s
    Scroll Element Into View    ${inputProjectedSales}
    [Arguments]     ${projectedSales}
    Input Text    ${inputProjectedSales}    ${projectedSales}


Edit the Opportunity at the Proposal stage
    Enter the space delivery date    ${SpaceDelivery}
    Enter the RCD date    ${newRCD}
    Set Browser Implicit Wait   5s
    Enter the expiration date    ${expiration}
    Click Button    ${saveButton}

    # Clicking on the Mark Stage As Complete button
    Sleep   10s
    Wait Until Element Is Visible    ${markStageAsCompleteButton}   20s
    ${MarkStageAsComplete}    Get WebElement    xpath=//span[text()='Mark Stage as Complete']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${MarkStageAsComplete}

    # Clicking on the Edit Oppotunity Button
    Sleep    10s
    Wait Until Element Is Visible    ${editOpportunityButton}   20s
    ${EditOpportunity}    Get WebElement    xpath=//button[text()='Edit Opportunity']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${EditOpportunity}

    # User entering a value in the Projected sales field
    Enter the Projected Sales field on the deal sheet    ${projectedSales}
    Wait Until Element Is Visible    ${saveAsDraftButton}   20s
    Click Button    ${saveAsDraftButton}







