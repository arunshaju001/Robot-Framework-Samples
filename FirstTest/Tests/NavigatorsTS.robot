*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demo.opencart.com/
${BROWSER}    chrome

*** Test Cases ***
new tab demo
    Open Browser    ${URL}    ${BROWSER}
    Input Text    name:search    Phone    
    Click Button    xpath://span//button[@type='button']
    
    ${pageloc}=    Get Location
    Log To Console    ${pageloc}    
    
    sleep    2s
    go back
    sleep    2s
    Go To    ${pageloc}
    Capture Page Screenshot    ./search.png
    Capture Element Screenshot    xpath://img[@title='iPhone']    ./iphone.png
    close browser