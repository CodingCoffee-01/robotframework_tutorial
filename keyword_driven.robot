*** Test Cases ***
TC1
    Display Message    Hello World

TC2
    [Template]    Display Message
    My First Test Case
    Testing Template

*** Keywords ***
Display Message
    [Arguments]    ${msg}
    Log    ${msg}
