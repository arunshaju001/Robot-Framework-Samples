*** Settings ***
Library    SeleniumLibrary    
Variables    ../Locators/locators.py
Variables    ../TestData/Testdata.py

*** Keywords ***
Verify Home page
    Element Should Be Visible    ${WelcomeTextId}    timeout=5
    
Logout Verification
    Click Element    ${WelcomeTextId}            
    Wait Until Element Is Visible    ${LogoutId}    
    Click Element    ${LogoutId}
    Wait Until Element Is Visible    ${LoginUsrId}        