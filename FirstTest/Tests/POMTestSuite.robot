*** Settings ***
Resource    POM/PageDefKeywords/CommonKeywords.robot
Resource    POM/PageDefKeywords/LoginPage.robot
Resource    POM/PageDefKeywords/HomePage.robot
Suite Teardown    Close App
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome

*** Test Cases ***
Verify Success login
    Open Browser with login page    ${url}    ${browser}
    Input User
    Input Pass
    Click Login
    Verify Home page
    Logout Verification