*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///D:/git_workspace/robotframework_tutorial/dropdown.html    chrome
    Select From List By Index    name:months    5
    Select From List By Label    name:days    17
    Select From List By Value    name:year    17
