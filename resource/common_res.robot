*** Setting ***

Library     Selenium2Library
Library     OperatingSystem
Library     common.py
Library     Collections
Library     String

Variables    ../testdata/common_params.py

*** Variables ***

${LOCATOR_LANG_FINNISH_SELECT}                xpath=//*[(@lang='fi-FI') and (@class='taglib-language-list-text')]
${LOCATOR_LANG_SWEDISH_SELECT}                xpath=//*[(@lang='sv-SE') and (@class='taglib-language-list-text')]
${LOCATOR_LANG_ENGISH_SELECT}                 xpath=//*[(@lang='en-US') and (@class='taglib-language-list-text')]

@{listOfTextFileCoulumnNames}=                ID    UI_PAGE    FI_TEXT    SW_TEXT    EN_TEXT
# ${JAVASCRIPT_CLEAR_COMPARISON_SESSION}      if (sessionStorage['comparison']) {sessionStorage.removeItem('comparison');}
${JAVASCRIPT_CHECK_AJAX_COMPLETION}           { return ( jQuery.active == 0 ); }

*** Keyword ***

Do Initial Setup
    [Arguments]    ${url}    ${browser}    ${sel_speed}    ${sel_impl_wait}    ${sel_timeout}
    Open Browser    ${url}    ${browser}
    Set Window Size     1920    1080
    Set Selenium Speed            ${sel_speed}
    Set Selenium Implicit Wait    ${sel_impl_wait}
    Set Selenium Timeout          ${sel_timeout}
    Print Robot Framework Version
    Print Selenium2Library Version
    Print OS Name
    Print Selenium Webdriver Version

Clear Browser History
    Run Keyword And Ignore Error    Delete All Cookies


Close Application
    Clear Browser History
    Close All Browsers


Print Firefox Version
    ${ff_version}=    Run    firefox --version
    Log    Firefox version is ${ff_version}

Print Robot Framework Version
    ${robotf_version}=    Run    robot --version
    Log    Robot Framework version is ${robotf_version}

Print Selenium2Library Version
    ${selenium2library}=    Get Library Instance    Selenium2Library
    ${selenium2library version}=    Set Variable    ${selenium2library.ROBOT_LIBRARY_VERSION}
    Log    Selenium2Library version is ${selenium2library version}

Print OS Name
    ${osname}=    Get OS Name
    Log    Operating System is ${osname}

Print Selenium Webdriver Version
    ${webdriverVersion}=    Get Selenium Webdriver Version
    Log    Selenium Webdriver version is ${webdriverVersion}

Check That Text Field Is Not Null
    [Arguments]   ${txtfield}
    ${tmp}=     Get Length    ${txtfield}
    Should Not Be Empty     ${tmp}
