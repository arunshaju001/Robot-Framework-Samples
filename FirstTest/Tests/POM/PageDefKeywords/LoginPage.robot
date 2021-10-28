*** Settings ***
Library    SeleniumLibrary    
Variables    ../Locators/locators.py
Variables    ../TestData/Testdata.py

*** Keywords ***
Input User
    Input Text    ${LoginUsrId}    ${User}
    
Input Pass
    Input Password   ${LoginPassId}    ${Pass}
    
Click Login
    Click Element    ${LoginButtonId}    
        