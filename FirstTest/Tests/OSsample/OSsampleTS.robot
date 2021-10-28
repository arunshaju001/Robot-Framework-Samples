*** Settings ***
Library    OperatingSystem    
Resource    resource.robot

*** Test Cases ***
Create directories
    Create a Base Dir
    Create Source Dir
    Create dest Dir
    
Create files and move
    Create File1
    Move File1