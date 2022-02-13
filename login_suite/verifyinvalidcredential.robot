*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials
Resource    ../pages/login_page.resource
#Resource    ../pages/main_page.resource


Library     DataDriver      file=../test_data/verifyinvalidcredential.csv

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template   Verify Invalid Credentials Template
*** Test Cases ***
TC1
TC2
TC3
TC4

*** Keywords ***
Verify Invalid Credentials Template
    [Arguments]     ${username}     ${password}
    Click Login
    Enter Username  ${username}
    Enter Password   ${password}
    Click Loginsubmit
