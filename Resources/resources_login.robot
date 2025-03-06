*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}   https://www.saucedemo.com/
${browser}   chrome

*** Keywords ***
Open my browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers

Open login page
    Go To    ${url}

Enter username
       [Arguments]      ${username}
       Input Text       id: user-name   ${username}
       sleep  3
       
Enter Password
        [Arguments]     ${password}
        Input Text      id: password     ${password}
        sleep  3

Click on Loginbutton
        Click Element       id: login-button
        sleep  3

Click on logoutbutton

        Click Element       xoath://button[@id='react-burger-menu-btn']
        Click Element     xpath://a[@id='logout_sidebar_link']
        sleep  3
Error message shoud be visible
        Page Should Contain    Epic sadface:
        
Dashboard should be visible
        Page Should Contain    Swag Labs






