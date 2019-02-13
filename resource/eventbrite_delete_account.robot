*** Settings ***


*** Variables ***

${LOCATOR_LINK_MENU_DROPDOWN}       xpath://a[@data-automation="global-nav-user-avatar"]
${LOCATOR_LINK_ACCOUNT_SETTINGS}    xpath://a[@href="https://www.eventbrite.com/account/"]
${LOCATOR_LINK_CLICK_SETTINGS}      xpath://a[@data-event-label="Account"]
${LOCATOR_LINK_CLOSE_ACCOUNT}       xpath://a[@data-automation="close-account"]
${LOCATOR_LINK_CHOOSE_ClOSEOPTION}  xpath://input[@id="reason_1"]
${LOCATOR_LINK_TYPE_ClOSE}          xpath://input[@name="close"]
${LOCATOR_LINK_TYPE_PASSWORD}       xpath://input[@name="passwd"]
${LOCATOR_LINK_CLICK_BUTTON}        xpath://input[@type="submit"]

*** Keywords ***

Delete Account

    Sleep                           1s
    Wait Until Element Is Visible   ${LOCATOR_LINK_MENU_DROPDOWN}
    Mouse Over                      ${LOCATOR_LINK_MENU_DROPDOWN}
    Wait Until Element Is Visible   ${LOCATOR_LINK_ACCOUNT_SETTINGS}
    Click Element                   ${LOCATOR_LINK_CLICK_SETTINGS}
    Wait Until Element Is Visible   ${LOCATOR_LINK_CLOSE_ACCOUNT}
    Click Element                   ${LOCATOR_LINK_CLOSE_ACCOUNT}
    Wait Until Element Is Visible   ${LOCATOR_LINK_CHOOSE_ClOSEOPTION}
    Click Element                   ${LOCATOR_LINK_CHOOSE_ClOSEOPTION}
    Wait Until Element Is Visible   ${LOCATOR_LINK_TYPE_ClOSE}
    Input Text                      ${LOCATOR_LINK_TYPE_ClOSE}          CLOSE
    Wait Until Element Is Visible   ${LOCATOR_LINK_TYPE_PASSWORD}
    Input Text                      ${LOCATOR_LINK_TYPE_PASSWORD}       esimerkki123
    Wait Until Element Is Visible   ${LOCATOR_LINK_CLICK_BUTTON}
    Click Element                   ${LOCATOR_LINK_CLICK_BUTTON}