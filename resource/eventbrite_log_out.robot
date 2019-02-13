*** Settings ***


*** Variables ***

${LOCATOR_LINK_MENU_DROPDOWN}       xpath://a[@data-automation="global-nav-user-avatar"]
${LOCATOR_LINK_LOG_OUT}             xpath://a[@href="https://www.eventbrite.com/logout/?referrer=/?internal_ref=signup"]

*** Keywords ***

Log Out

    Sleep                           1s
    Wait Until Element Is Visible   ${LOCATOR_LINK_MENU_DROPDOWN}
    Mouse Over                      ${LOCATOR_LINK_MENU_DROPDOWN}
    Wait Until Element Is Visible   ${LOCATOR_LINK_LOG_OUT}
    Click Element                   ${LOCATOR_LINK_LOG_OUT}

