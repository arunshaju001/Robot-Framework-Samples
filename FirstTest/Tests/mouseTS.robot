*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://swisnl.github.io/jQuery-contextMenu/demo.html
${URL2}    http://testautomationpractice.blogspot.com/
${BROWSER}    chrome

*** Test Cases ***
right click demo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Open Context Menu    xpath://span[contains(text(),'right click me')]
    
Double Click Demo
    go to    ${URL2}
    Input Text    id:field1    Welcome Arun
    Double Click Element    xpath://button[contains(text(),'Copy Text')]

Dragging Demo
    sleep    3s
    Drag And Drop    id:draggable    id:droppable

    sleep    5s
    Close Browser