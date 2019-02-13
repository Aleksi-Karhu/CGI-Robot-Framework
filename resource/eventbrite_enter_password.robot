*** Settings ***


*** Variables ***

${LOCATOR_LINK_PASS}                xpath://input[@type="password"]
${LOCATOR_BTN_LOG_IN}               xpath://button[@data-automation="signup-submit-button"]

*** Keywords ***

Enter Password

    Wait Until Element Is Visible    ${LOCATOR_LINK_PASS}
    Input Password                   ${LOCATOR_LINK_PASS}      diabolo123
    Wait Until Element Is Visible    ${LOCATOR_BTN_LOG_IN}
    Click Element                    ${LOCATOR_BTN_LOG_IN}