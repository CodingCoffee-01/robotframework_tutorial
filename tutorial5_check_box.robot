*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///D:/git_workspace/robotframework_tutorial/checkbox.html    chrome
    Select Checkbox    name:option1
