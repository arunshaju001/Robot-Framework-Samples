*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${HLBROWSER}    headlesschrome

*** Test Cases ***
First TestCase
    Log  Welcome
    
LoginTest
    open browser    ${URL}    ${HLBROWSER}
    maximize browser window
    Input Text    id:username    tomsmith
    Input Password    css:input[name=password]    SuperSecretPassword!
    #click button    tag:button
    click button    css:.radius
    #click button    class:radius
    Element Should Be Visible    id:flash    
    Element Should contain    Xpath://div[@id="flash-messages"]//div[@id="flash"][contains(text(),'You logged into a secure area')]    You logged into a secure area!
    Log To Console    \nHeadless execution Success...    
    close browser