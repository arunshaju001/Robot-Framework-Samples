*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.youtube.com/
${BROWSER}    chrome

*** keywords ***
Initialize
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
TearDown
    Sleep    3s
    Close Browser
       
search for video "${name}"
    Set Selenium Implicit Wait    10s
    Set Selenium Timeout    10s
    Wait Until Element Is Visible    xpath://input[@id='search']    
    Input Text    xpath://input[@id='search']    ${name}    
    Click Button    id:search-icon-legacy
    Click Element    xpath://ytd-video-renderer//div//a[@id='thumbnail']

*** Test Cases ***
Highleve Demo
    Given initialize
    When search for video "STAY"    #parameters
    Then teardown