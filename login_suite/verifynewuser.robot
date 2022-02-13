*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    url= https://nasscom.in/about-us/career     browser=firefox     executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Click Element    xpath=/html/body/header/div[2]/div[2]/div[2]/div[1]/form/div/div/a
    Input Text    id=edit-field-fname-reg    admin
    Input Text    id=edit-field-lname    pass
    Input Text    id=edit-mail    saimanvithakurapati@gmail.com
    Input Text    id=edit-field-company-name-registration    google
    Select From List By Label    field_business_focus_reg       IT Consulting
    Click Element    name=op
    Close Browser