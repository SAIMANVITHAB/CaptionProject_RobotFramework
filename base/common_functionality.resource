*** Settings ***
Documentation   This file contains reusable keywords

Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER_NAME}         firefox
${URL}                  https://nasscom.in/about-us/career

*** Keywords ***
Launch Browser
    Open Browser      browser=${BROWSER_NAME}      executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}/screenshot
    Go To    url=${URL}

End Browser
#    Capture Page Screenshot
    Close Browser