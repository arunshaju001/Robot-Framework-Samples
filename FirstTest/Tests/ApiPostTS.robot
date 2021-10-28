*** Settings ***
Library    RequestsLibrary    
Library    Collections    
Library    JSONLibrary    

*** Variables ***
${url}    https://jsonplaceholder.typicode.com/
${city}    chennai

*** Test Cases ***
Post Demo
    Create Session    mysess    ${url} 
    &{body}    Create Dictionary    userId=1000    title=sample title    body=test body for post
    &{header}    Create Dictionary    Cache-Control=no-cache
    ${response}    POST On Session    mysess    /posts    data=${body}    headers=${header}
    Log To Console    \nStatus Code: ${response.status_code}    
    ${id}    Get Value From Json    ${response.json()}    id
    Log To Console    ${id}    