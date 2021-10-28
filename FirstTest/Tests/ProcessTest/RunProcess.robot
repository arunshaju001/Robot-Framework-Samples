*** Settings ***
Library    Process

*** Test Cases ***
Run Python Process
    ${result}=    Run Process    python    hello.py    
    Log To Console    ${result.stdout}    
    Should Be Equal As Strings    ${result.stdout}    Hello Welcome    