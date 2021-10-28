*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demo.seleniumeasy.com/table-sort-search-demo.html
${BROWSER}    chrome

*** Test Cases ***
table demo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${rows}    Get Element Count    xpath://tbody/tr
    Log To Console    \nRows : ${rows}    
    ${cols}    Get Element Count    xpath://thead/tr/th
    Log To Console    Cols : ${cols}
    ${data}    Get Table Cell    id:example    5    3    
    Log To Console    data[5][3] : ${data} \n
    Table Column Should Contain    id:example    3    Office    
    #Note : row conts from body only others from head
    Table Row Should Contain    id:example    4    London    
    Table Cell Should Contain    id:example    5    3    London    
    Table Should Contain    id:example    $106,450/y    
    
    FOR    ${i}    IN RANGE    1    ${rows}
        ${cell}    Get Table Cell    id:example    ${i}    3        
        Log To Console    ${cell}
    END 
    Log To Console    \n
    sleep    5s
    Close Browser