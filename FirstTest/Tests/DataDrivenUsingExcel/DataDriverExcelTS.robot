*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=TestData.xlsx    sheet_name=loginData 
Suite Setup    Open Application
Suite Teardown    Close Application
Test Template    Login with credentials

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${user}
${pass}

*** keywords ***
Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Close Application
    Sleep    3s
    Close Browser
    
Login with credentials
    [Arguments]    ${user}    ${pass}
    Input Text    id:username    ${user}
    Input Password    css:input[name=password]    ${pass}
    click button    css:.radius
    
*** Test Cases ***
Login with user ${user} and Password ${pass}    Default    Test
    