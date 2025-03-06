*** Settings ***

Library     SeleniumLibrary

Suite Setup     Log To Console    Lauch the browser
Suite Teardown      Log To Console    Close the browser

Test Setup      Log To Console    Login to application
Test Teardown       Log To Console    Logout to appliccation

*** Test Cases ***
TC1-
    Log To Console    This is first Test cases

TC2
    Log To Console    This is second test cases

TC3
    Log To Console    This is third Test cases

TC4
    Log To Console    This is fourth test cases

