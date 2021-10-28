*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://chercher.tech/practice/frames
${BROWSER}    chrome

*** Test Cases ***
frame demo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${label}    Get Text    xpath://label/span
    Log To Console    ${label}    
    Select Frame    id:frame1
    Input Text    xpath://b[@id='topic']/following-sibling::input    arun shaju
    Select Frame    id=frame3
    Select Checkbox    id:a
    Unselect Frame
    Select Frame    id:frame1
    Input Text    xpath://b[@id='topic']/following-sibling::input    Back to Frame 1
    Unselect Frame
    Select Frame    id:frame2
    Select From List By Value    id:animals    babycat    
    ${selected}=    Get Selected List Value    id:animals
    Log To Console    ${selected}    
    Sleep    5s
    close browser
    
    