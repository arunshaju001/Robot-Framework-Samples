*** Settings ***
Force Tags    logTest    #force logtest tag to all tests

*** Test Cases ***
valid login
    [Tags]    loginTest
    log to console    valid login test
    
invalid login
    [Tags]    loginTest
    log to console    valid login test
    
logut tset
    log to console    logout test
    
# run command include only tagged
#robot -i loginTest TagTS.robot
# run command exclude tagged
# robot -e loginTest  TagTs.robot