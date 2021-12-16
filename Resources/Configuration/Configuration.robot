*** Settings ***

Library    Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../Data/LoginInformation.robot
Library     OperatingSystem
Library     BuiltIn
Library     String
*** Variables ***
${timeout}  15


*** Keywords ***
Open Chrome
    [Arguments]     ${link}
    open browser    ${link}   Chrome
    Maximize Browser Window

Open Firefox
    [Arguments]     ${link}
    open browser    ${link}   Firefox
    Maximize Browser Window

Open Edge
    [Arguments]     ${link}
    open browser    ${link}     Edge    options=use_chromium=True
    maximize browser window

Open test Browser
    [Arguments]     ${link}  ${NameBrowser}
    Run Keyword If   ${NameBrowser}== ${Chrome}   Open Chrome    ${link}
    ...  ELSE IF   ${NameBrowser}== ${Firefox}   Open Firefox    ${link}
    ...  ELSE    Open Edge    ${link}

close test browser
    close all browsers

Break
    sleep  3





