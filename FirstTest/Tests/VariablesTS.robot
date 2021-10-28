*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem    

*** Variables ***
${env}    test
&{url}    test=https://www.demoblaze.com/    dev=https://the-internet.herokuapp.com/login

*** Test Cases ***
Using List
    @{userDetails} =    Create list     john    user    next person
    log many    @{userDetails}
    log    "First : ",${userDetails}[1] 
    
List Demo
    open browser    https://www.demoblaze.com/    chrome
    sleep    5s
    @{elements_list}    Get WebElements    css:h4.card-title a
    FOR    ${i}    IN    @{elements_list}
        ${elementText}    Get Text    ${i}
        Log To Console    ${elementText}    
        Run Keyword If    '${elementText}' == 'Samsung galaxy s6'    Click Element    ${i}
        Exit For Loop If    '${elementText}' == 'Samsung galaxy s6'
    END
    log many    @{elements_list}
    close browser

Dictionary Demo
    @{userDetails} =    Create list     john    user    next person
    &{dictItems} =    create Dictionary    a=10    b=tseting    c=@{userDetails}
    log    value of a : ${dictItems.a}
    log    value of b : ${dictItems}[b]
    log    value of c[1] : ${dictItems.c}[1]
    
# Variable from User
    # Log To Console    Current User : %{USERNAME}  
    # open browser    ${url.${env}} chrome
    