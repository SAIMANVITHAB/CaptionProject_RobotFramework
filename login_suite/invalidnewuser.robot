*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    url= https://nasscom.in/about-us/career     browser=firefox     executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Click Element    xpath=/html/body/header/div[2]/div[2]/div[2]/div[1]/form/div/div/a
    Input Text    id=edit-field-fname-reg    admin
    Input Text    id=edit-field-lname    pass
    Click Element    name=op
    Close Browser


TC2
    Open Browser       browser=firefox         executable_path=${EXECDIR}/driver/geckodriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://nasscom.in/nasscom-membership
     Click Element    xpath=/html/body/div[4]/div[1]/form/div/div/div/div[1]/div/div/div[2]/label
     Click Element    xpath=/html/body/div[4]/div[1]/form/div/div/div/div[2]/div[2]/div/div/div[1]/label
     Click Element    xpath=/html/body/div[4]/div[1]/form/div/div/div/div[2]/div[2]/div/div/div[9]/label
     Click Element    id=edit-submitted-contact-person-for-nasscom-email-id-cp
     Sleep    2s
     ${alert_text}  Handle Alert    action=ACCEPT
     Log To Console    ${alert_text}
