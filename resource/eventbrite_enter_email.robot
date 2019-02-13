*** Settings ***


*** Variables ***

${LOCATOR_LINK_EMAIL}               xpath://input[@name="email"]
${LOCATOR_BTN_GET_STARTED}          xpath://button[@data-automation="signup-submit-button"]

*** Keywords ***

Enter Email

    Sleep                            1s
    Wait Until Element Is Visible    ${LOCATOR_LINK_EMAIL}
    Input Text                       ${LOCATOR_LINK_EMAIL}      esimerkki2098@gmail.com
    Wait Until Element Is Visible    ${LOCATOR_BTN_GET_STARTED}
    Click Element                    ${LOCATOR_BTN_GET_STARTED}


