*** Settings ***
Suite Setup       Open Login Page    ${loginpage}    ${browser}.    # setup for open login page
Library           SeleniumLibrary

*** Variables ***
${loginpage}      file:///D:/git_workspace/robotframework_tutorial/login.html    # url from local folder
${browser}        chrome

*** Keywords ***
Open Login Page
    [Arguments]    ${loginpage}    ${browser}
    Open Browser    ${loginpage}
    Maximize Browser Window
    Title Should be    Login Page
    [Teardown]    Close Browser
