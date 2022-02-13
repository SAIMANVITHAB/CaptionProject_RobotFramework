*** Settings ***
Documentation   this file handles all the operation in the login page of openemr

Resource    ../base/common_functionality.resource

*** Variables ***
${LOGIN_LOCATOR}    xpath=/html/body/header/div[2]/div[2]/div[2]/div[2]/form/div/div/a
${USERNAME_LOCATOR}     id=edit-name
${PASSWORD_LOCATOR}     id=edit-pass
${LOGINSUBMIT_LOCATOR}        xpath=//*[@id="edit-submit--3"]


*** Keywords ***
Click Login
        Click Element    ${LOGIN_LOCATOR}

Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}   ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click Loginsubmit
    Click Element    ${LOGINSUBMIT_LOCATOR}