*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Application
Suite Teardown    Close Application
Test Template    Login with invalid credentials


*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${ValidPass}    SuperSecretPassword!
${ValidUser}    tomsmith

*** keywords ***
Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Close Application
    Sleep    3s
    Close Browser
    
Login with invalid credentials
    [Arguments]    ${user}    ${pass}
    Input Text    id:username    ${user}
    Input Password    css:input[name=password]    ${pass}
    click button    css:.radius

*** Test Cases ***    USER    PASS
Invalid User    tominvalid    ${ValidPass}
Invalid Pass    ${ValidUser}    hacker 
Empty User and Pass    ${EMPTY}    ${EMPTY}    #${EMPTY} is not defined.  