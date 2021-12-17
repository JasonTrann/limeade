*** Settings ***
Library     BuiltIn
Library     String
Resource  ../Resources/Configuration/Configuration.robot
Resource  ../Resources/pom/LoginPage/LoginPage.robot
Resource  ../Resources/pom/HomePage/HomePage.robot
Resource  ../Resources/pom/AddPeoplePage/AddPeolePage.robot
Library    Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../Data/LoginInformation.robot
Library  RequestsLibrary

#Test Teardown   close test browser
*** Variables ***

*** Test Cases ***
Demo full flow
    Open test Browser  ${Dev-site}   ${chrome}
    Input email or account  ${account}
    Click Continue button
    Input email password    ${test_password}
    Click Sign in button
    Click Settings button
    Click Add people button
    break
    Input 1st Name      demo10
    Input last Name     test10
    Input email     demotest10@getnada.com
    Input startdate     31
    Select Mangager     long
    Click to add people button
    Verify UI at Congratulations page
