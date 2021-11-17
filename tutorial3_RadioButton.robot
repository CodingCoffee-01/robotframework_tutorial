*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///D:/git_workspace/robotframework_tutorial/radiocheck.html    chrome
    Select Radio Button    gender    female
