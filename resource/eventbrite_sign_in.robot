*** Settings ***


*** Variables ***

${LOCATOR_LINK_START}            xpath://a[@data-automation="global-header-login-url"]

*** Keywords ***

Sign In

    Wait Until Element Is Visible    ${LOCATOR_LINK_START}
    Click Element                    ${LOCATOR_LINK_START}

