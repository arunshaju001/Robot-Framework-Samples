*** Settings ***
Library    RequestsLibrary    

*** Variables ***
${url}    https://demoqa.com/utilities/weather/city
${city}    chennai

*** Test Cases ***
get weather info
    Create Session    mysess    ${url}    
    ${response}    GET On Session    mysess    /${city}
    Log To Console    ${response.content}    
    Log To Console    \nStaus Code: ${response.status_code}    
    Status Should Be    200    
    Should Be Equal As Strings    ${response.reason}    OK    
    Log To Console    ${response.headers}    
    