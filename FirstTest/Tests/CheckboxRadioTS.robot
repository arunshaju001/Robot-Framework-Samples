*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Radio button Demo
    Open Browser    https://demo.seleniumeasy.com/basic-radiobutton-demo.html    chrome
    Select Radio Button    optradio    Female
    sleep    5s
    ##Checks if any radio button selected or not
    #Radio Button Should Not Be Selected    optradio  
    Radio Button Should Be Set To    optradio    Female
    ${gender}=    Get Element Attribute    optradio    value
    log to console    ${gender}
    close browser
    

Checkbox Demo
    Open Browser    https://demo.seleniumeasy.com/basic-checkbox-demo.html    chrome
    Select Checkbox    id:isAgeSelected
    Select Checkbox    css:.panel-body > div:nth-child(3) input
    Select Checkbox    xpath:(//input[@class='cb1-element'])[3]
    close browser