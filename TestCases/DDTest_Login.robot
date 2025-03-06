*** Settings ***
Library     SeleniumLibrary
Resource    ..//Resources/resources_login.robot
Suite Setup     Open my browser
Suite Teardown      Close browsers
Test Template       Invalid Login
#Test Template   Valid Login



*** Test Cases ***      username    password
Right username empty pass   admin@yourstore.com     ${EMPTY}
Right username invalid password     admin@yourstore.com     123456
Invalid username and password       admin       q3qe23
Emplyusername and password      ${EMPTY}    ${EMPTY}
#Valid Username1 and password1     standard_user   secret_sauce
#Valid Username2 and password2     locked_out_user   secret_sauce


*** Keywords ***

Invalid Login
    [Arguments]   ${username}   ${password}
    Enter username    ${username}
    Enter Password    ${password}
    Click on Loginbutton
    Error message shoud be visible

#Valid Login
#    [Arguments]   ${username}   ${password}
#    Enter username    ${username}
#    Enter Password    ${password}
#    Click on Loginbutton
#    Dashboard should be visible