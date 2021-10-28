*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demo.opencart.com/
${BROWSER}    chrome

*** Test Cases ***
new tab demo
    Open Browser    ${URL}    ${BROWSER}
    # sleep    5s
    # Scroll Element Into View    //*[@id="content"]/div[3]/div[2]
    # sleep    5s
    # Execute Javascript    window.scrollTo(100,-1)
    Input Text    name:search    Phone    
    Click Button    xpath://span//button[@type='button']
    sleep    2s
    Execute Javascript    history.go(-1)
    sleep    2s
    Execute Javascript    history.go(1)
    ${pageTitle}=    Execute Javascript    return document.title
    Log To Console    ${pageTitle}    
    
    sleep    5s
    close browser