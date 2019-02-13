*** Settings ***


*** Variables ***
${LOCATOR_LINK_FIRST_NAME}          xpath://input[@name="firstName"]
${LOCATOR_LINK_LAST_NAME}           xpath://input[@name="lastName"]
${LOCATOR_LINK_PASSWORD}            xpath://input[@name="password"]
${LOCATOR_BTN_SIGN_UP}              xpath://button[@data-automation="signup-submit-button"]

*** Keywords ***

Enter Account Details

    Sleep                           1s
    Wait Until Element Is Visible   ${LOCATOR_LINK_FIRST_NAME}
    Input Text                      ${LOCATOR_LINK_FIRST_NAME}  Brian
    Wait Until Element Is Visible   ${LOCATOR_LINK_LAST_NAME}
    Input Text                      ${LOCATOR_LINK_LAST_NAME}   Kottarainen
    Wait Until Element Is Visible   ${LOCATOR_LINK_PASSWORD}
    Input Text                      ${LOCATOR_LINK_PASSWORD}    esimerkki123
    Wait Until Element Is Visible   ${LOCATOR_BTN_SIGN_UP}
    Click Element                   ${LOCATOR_BTN_SIGN_UP}

