*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://the-internet.herokuapp.com/dynamic_loading/2
${BROWSER}    chrome

*** keywords ***
Initialize
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
TearDown
    Sleep    3s
    Close Browser
    
SyncTest
    Initialize
    #Note: Selenium Speed will set wait between all steps.
    #Set Selenium Speed    10s
    Click Button    //button[text()='Start']
    ${defImp}    Get Selenium Implicit Wait    
    Log To Console    \nWait = ${defImp}  
    Set Selenium Implicit Wait    30s
    ${defImp}    Get Selenium Implicit Wait    
    Log To Console    \nWait = ${defImp}  
    ${waitingText}    Get Text    //h4[text()='Hello World!']  
    
    TearDown    

*** Test Cases ***
Sync demo
    synctest