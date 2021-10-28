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
       
Add
    [Arguments]    ${Val1}    ${Val2}
    ${sum}    Evaluate    ${Val1}+${Val2}   
    [return]    ${sum}   
    
Change Nickname
    [Arguments]    ${old}    ${new}
    [return]    ${new}    

*** Test Cases ***
custom demo
    ${result}    Add    10    15
    Should Be Equal As Integers    25    ${result}    
    Log To Console    \nSum is : ${result}
       