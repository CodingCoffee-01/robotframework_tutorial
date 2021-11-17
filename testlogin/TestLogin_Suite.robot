*** Settings ***
Suite Setup       Login Page Display    ${loginpage}
Test Template     Test Login    # this template will test all possibility
Library           SeleniumLibrary

*** Variables ***
${email}          admin@gmail.com
${password}       admin
${successpage}    file:///D:/git_workspace/robotframework_tutorial/login_success.html
${failurepage}    file:///D:/git_workspace/robotframework_tutorial/login_fail.html

*** Test Cases ***
Invalid login test case 1
    abc@gmail.com    123

*** Keywords ***
Login Page Display
    [Arguments]    ${loginpage}
    Go To    ${loginpage}
    Title Should Be    Login Page

Test Login
    [Arguments]    ${email}    ${password}
    Enter Email    ${email}
    Enter Password    ${password}
    Submit Details
    Login Should Fail

Enter Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Enter Password
    [Arguments]    ${password}
    Input Text    Password    ${password}

Submit Detail
    Click Button    btnsubmit

Login Should Fail
    Location Should Be    ${failurepare}
    Title Should Be    Login Failed
