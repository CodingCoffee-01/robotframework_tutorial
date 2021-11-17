*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    [Setup]    Open browser    https://www.tutorialspoint.com/    chrome    # setup to open browser
    Input Text    name=search    this is from setup/teardown robotframework
    [Teardown]    Close Browser    # teardown to close browser
