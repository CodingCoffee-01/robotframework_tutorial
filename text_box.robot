*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.tutorialspoint.com/    chrome
    Input Text    name=key    angularjs
    Click button    class:search-box
