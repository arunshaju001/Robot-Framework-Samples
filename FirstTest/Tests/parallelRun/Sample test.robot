*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome

*** Test Cases ***
First TestCase
    Log  Welcome
    
LoginTest
    open browser    ${URL}    ${BROWSER}
    maximize browser window
    Input Text    id:username    tomsmith
    Input Password    css:input[name=password]    SuperSecretPassword!
    #click button    tag:button
    click button    css:.radius
    #click button    class:radius
    Element Should Be Visible    id:flash    
    Element Should contain    Xpath://div[@id="flash-messages"]//div[@id="flash"][contains(text(),'You logged into a secure area')]    You logged into a secure area!
    close browser
    
Invalid LoginTest
    open browser    ${URL}    ${BROWSER}
    maximize browser window
    Input Text    id:username    tomsmith
    Input Password    id:password    wrongpass
    click button    tag:button
    Element Should contain    id:flash    Your password is invalid!
    Close Browser
    