*** Settings ***
Library    SeleniumLibrary
Resource    ../tests/commonUtils.robot

Suite Setup    commonUtils.Open Application  
#Test Setup    Open Application
Suite Teardown    Close Application

*** Test Cases ***
Single Drop Down Demo
    
    Select From List By Value    select-demo    Tuesday
    
Multi Drop Down Demo
    
    Select From List By Index    multi-select    5
    Select From List By Value    multi-select    New Jersey
    Select From List By Label    multi-select    Ohio
    @{selectedValues}    Get Selected List Values    multi-select
    ${count}    get length    ${selectedValues}
    log    count=${count}
    # log    Get   @{selectedValues}