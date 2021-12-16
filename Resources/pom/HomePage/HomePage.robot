*** Settings ***
Resource  ../../../Resources/Configuration/Configuration.robot
Library    Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../Data/LoginInformation.robot

*** Variables ***
${e_settings_btn}   //li[@data-name='settings']//div[@class='site-bar__MenuItems__clickPoint--gmeqo']
${e_add_ppl_btn}    //li[@data-name='settings_users_invite']

*** Keywords ***
Click Settings button
    break
    wait for and click element  ${e_settings_btn}   timeout=${timeout}

Click Add people button
    wait for and click element  ${e_add_ppl_btn}    timeout=${timeout}