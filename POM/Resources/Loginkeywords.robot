*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py



*** Keywords ***
Open My browser
    [Arguments]     ${siteURL}   ${browser}
    Open Browser    ${siteURL}      ${browser}
    Maximize Browser Window

Clickon LoginLink
    Click Link    ${linkLogin}

Enter Username      
    [Arguments]     ${username}
    Input Text    ${txtUsesrname}    ${username}

Enter Password
    [Arguments]   ${password}
    Input Text    ${txtpassword}    ${password}

Click on Login button
        Click Element    ${btnLogin}

Close all browsers
    Close Browser

Verify Login success
        Page Should Contain    pwrahul@gmail.com


