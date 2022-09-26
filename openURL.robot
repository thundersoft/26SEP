*** Settings ***
Documentation    Suite description
Library           Selenium2Library
Resource          ${CURDIR}/../TestData/constants.robot


*** Variables ***
${urlRFW}=    https://robotframework.org/
${chromeBrowser}=    chorme
${ffBrowser}=    firefox
${edgeBrowser}=    Edge


*** Test Cases ***
launch_letsKodeit
    [Tags]    Sanity
    Open Browser    https://courses.letskodeit.com/practice     chrome
    Maximize Browser Window
    Close Browser Application

launch_letsKodeit_variable
    [Tags]    Sanity
    Open Browser    ${urlRFW}     Edge
    Maximize Browser Window
    Close Browser Application

launch_letsKodeit_all_variable
    [Tags]    Sanity
    Open Browser    ${urlRFW}     ${ffBrowser}
    Maximize Browser Window
    Close Browser Application

*** Keywords ***
Close Browser Application
    [Documentation]  Closes the current browser application
    Close Browser