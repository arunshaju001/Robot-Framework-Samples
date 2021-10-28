*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Select date
    Open Browser    https://demoqa.com/date-picker    chrome
    Maximize Browser Window
    Click Element    id:datePickerMonthYearInput    
    Click Previous
    Click Next
    Click Element    xpath://div[@class='react-datepicker__week'][5]/div[2]
    Close App
 
Select using JS
    Open Browser    https://demoqa.com/date-picker    chrome
    Maximize Browser Window
    Execute Javascript    document.querySelector('#datePickerMonthYearInput').value='01/25/2021'
    Close App


*** Keywords ***
Close App
    Sleep    5s
    Close All Browsers
Click Previous
    Wait Until Element Is Visible    xpath://button[@class='react-datepicker__navigation react-datepicker__navigation--previous']    
    Click Element    xpath://button[@class='react-datepicker__navigation react-datepicker__navigation--previous']    
    
Click Next
    Wait Until Element Is Visible    xpath://button[@class='react-datepicker__navigation react-datepicker__navigation--next']    
    Click Element    xpath://button[@class='react-datepicker__navigation react-datepicker__navigation--next'] 