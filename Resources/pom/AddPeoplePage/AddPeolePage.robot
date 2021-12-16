*** Settings ***
Resource  ../../../Resources/Configuration/Configuration.robot
Library    Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../Data/LoginInformation.robot

*** Variables ***
${e_1st_ppl_first_name}    //input[@field='firstName'][@type='text'][@refkey='1']
${e_1st_ppl_last_name}    //input[@field='lastName'][@type='text'][@refkey='1']
${e_1st_ppl_email}    //input[@field='email'][@type='text'][@refkey='1']
${e_1st_ppl_startdate}    (//input[@field='startDate'][@type='text'])[1]
${e_manager_dropdown}    (//div[@aria-label='Dropdown Trigger'])[6]
${e_confirm_add_people_btn}     //span[@class='Button__text___13OYb'][normalize-space()='Add People']
${ui_Congratulations_page}     //div[contains(text(),'Congratulations')]

*** Keywords ***

Input 1st Name
    [Arguments]  ${1stname_value}
    wait until page contains element    ${e_1st_ppl_first_name}  timeout=${timeout}
    input text  ${e_1st_ppl_first_name}    ${1stname_value}

Input last Name
    [Arguments]  ${lastname_value}
    wait until page contains element    ${e_1st_ppl_last_name}  timeout=${timeout}
    input text  ${e_1st_ppl_last_name}    ${lastname_value}

Input email
    [Arguments]  ${email_value}
    wait until page contains element    ${e_1st_ppl_email}  timeout=${timeout}
    input text  ${e_1st_ppl_email}    ${email_value}

Input startdate
    [Documentation]  I dont have much time so I will hard code the month is december :)
    [Arguments]  ${date_value}
    wait for and click element  ${e_1st_ppl_startdate}  timeout=${timeout}
    wait for and click element  //span[normalize-space()='${date_value}']   timeout=${timeout}

Select Mangager
    [Arguments]  ${manager_name}
    wait for and click element  ${e_manager_dropdown}   timeout=${timeout}
    wait for and click element  //h4[normalize-space()='${manager_name}']   timeout=${timeout}

Verify UI at Congratulations page
    wait until page contains element  ${ui_Congratulations_page}    timeout=${timeout}
    page should contain element  ${ui_Congratulations_page}

Click to add people button
    wait for and click element  ${e_confirm_add_people_btn}     timeout=${timeout}