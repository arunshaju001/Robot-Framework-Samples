*** Settings ***
Library    SeleniumLibrary    
Variables    ../Locators/locators.py
    
*** Keywords ***
Open Browser with login page
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Wait Until Element Is Visible    ${LoginUsrId}    
    
Close App
    sleep    5s
    Close All Browsers
    