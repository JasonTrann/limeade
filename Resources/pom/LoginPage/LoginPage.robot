*** Settings ***
Resource  ../../../Resources/Configuration/Configuration.robot
Library    Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../Data/LoginInformation.robot

*** Variables ***
${e_email_field}        //input[@data-cucumber='input-login-email'][@type='text']
${e_Continue_btn}       //div[@data-cucumber='button-continue'][@role='button']
${e_password_field}     //input[@type='password']
${e_sign_in_btn}       //div[@data-cucumber='button-login'][@role='button']
*** Keywords ***

Input email or account
    [Arguments]  ${email_value}
    wait until page contains element    ${e_email_field}  timeout=${timeout}
    input text  ${e_email_field}    ${email_value}

Click Continue button
    wait for and click element  ${e_Continue_btn}   timeout=${timeout}

Input email password
    [Arguments]  ${pass_value}
    Break
    press keys   ${e_password_field}    ${pass_value}

Click Sign in button
    wait for and click element  ${e_sign_in_btn}    timeout=${timeout}
