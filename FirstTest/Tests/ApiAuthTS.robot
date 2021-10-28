*** Settings ***
Library    RequestsLibrary    
Library    Collections    
Library    JSONLibrary    

*** Variables ***
${url}    https://postman-echo.com

*** Test Cases ***
Auth Demo
    @{auth}    Create List    postman    password
    Create Session    mysess    ${url}    auth=${auth}
    ${response}    GET On Session    mysess    /basic-auth
    Log To Console    \nStatus Code: ${response.status_code}    
    # Log To Console    ${id}   