*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://stqatools.com/demo/Windows.php
${BROWSER}    chrome

*** Test Cases ***
# new tab demo
    # Open Browser    ${URL}    ${BROWSER}
    # Maximize Browser Window
    # ${parentWindow}=    Get Window Handles    
    # log to console    ${parentWindow}[0]
    # Click Button    xpath://button[contains(text(),'new Tab')]    
    # ${WinHandle}=    Get Window Handles  
    # ${OpenWins}=    Get Length    ${WinHandle}  
    # log to console    Num of open windows : ${OpenWins}
    # Switch Window    ${winhandle}[1]
    # sleep    3s
    # Click Element    xpath://span[@class='menu-text' and contains(text(),'Java')]    
    # Title Should Be    JAVA for Selenium WebDriver from Basic to Advance with Example    
    # Close Window
    # Switch Window    ${winhandle}[0]
    # Title Should Be    Demo Web    
    # Close Window
    
new window demo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Button    xpath://button[contains(text(),'new Window')]  
    @{browserIds}=    Get Browser Ids
    Log Many   @{browserIds}
    sleep    2s
    Switch Browser     1
    Click Button    xpath://button[contains(text(),'new Tab')] 
    Close Browser








         