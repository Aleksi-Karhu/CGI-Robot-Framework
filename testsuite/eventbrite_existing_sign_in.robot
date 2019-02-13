*** Settings ***

Documentation   A simple test to test Eventbrite as a UI functional test automation tool
...             To test this suite run the following commands on the command prompt :
...                 cd CGICC
...                 robot -L trace -d results -i eventbrite testsuite

Resource    ../resource/common_res.robot
Resource    ../resource/eventbrite_sign_in.robot
Resource    ../resource/eventbrite_enter_email.robot
Resource    ../resource/eventbrite_create_account.robot
Resource    ../resource/eventbrite_delete_account.robot
#Resource    ../resource/eventbrite_log_out.robot
#Resource    ../resource/eventbrite_enter_password.robot

Test Setup        Do Initial Setup    ${SUT_URL}    ${BROWSER}    ${SEL_SPEED}    ${SEL_IMPL_WAIT}    ${SEL_TIMEOUT}
Test Teardown     Close Application

Default Tags      eventbrite

*** Variables ***


*** Test Cases ***

Do A Test

    Sign In
    Enter Email
    #Enter Password
    Enter Account Details
    Delete Account
    Sleep       2s
    #Start A New Hack
    #${status} =    Find Login Bypass Hack
    #Run Keyword If    ${Status}==True    Start Login Bypass
