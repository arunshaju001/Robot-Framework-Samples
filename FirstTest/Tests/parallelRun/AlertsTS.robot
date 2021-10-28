*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Alert Demo
    Open Browser    https://demo.seleniumeasy.com/javascript-alert-box-demo.html    chrome
    Click Button    xpath:(//button[contains(text(),'Click me!')])    
    Handle Alert    Accept 
    Click Button    xpath:(//button[contains(text(),'Click me!')])[2]    
    Handle Alert    dismiss
    Click Button    xpath:(//button[contains(text(),'Prompt')])    
    Input Text Into Alert    Arun Shaju 
    Handle Alert    Accept   
    #${alertText}=    Handle Alert    Accept
    #Log To Console    ${alertText}    
    Sleep    5s    
    Close Browser
