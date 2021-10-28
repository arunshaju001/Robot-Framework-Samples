*** Settings ***
Library    OperatingSystem    

*** Variables ***
${opdir}    outputDir
${dirOne}    sourceDir
${dirTwo}    destDir
${file1}    file1.txt


*** Keywords ***
Create a Base Dir
    Create Directory    ${opdir}
    Should Exist    ${opdir}    
    
Create Source Dir
    ${dirPath}    Join Path    ${opdir}    ${dirOne} 
    Create Directory    ${dirPath}
    Should Exist    ${dirPath} 
    
Create dest Dir
    ${dirPath}    Join Path    ${opdir}    ${dirTwo} 
    Create Directory    ${dirPath}
    Should Exist    ${dirPath} 
   
Create File1
    ${FilePath}    Join Path    ${opdir}    ${dirOne}    ${file1}
    Create File   ${FilePath}    hello content here
    Should Exist    ${FilePath}  

Move File1
    ${SourcePath}    Join Path    ${opdir}    ${dirOne}    ${file1} 
    ${DestPath}    Join Path    ${opdir}    ${dirTwo} 
    Move File   ${SourcePath}    ${DestPath}
    ${DestPath}    Join Path    ${opdir}    ${dirTwo}    ${file1}
    Should Exist    ${DestPath} 
    







