*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  Chrome
${url}  https://obcpneustg-desktopui.obcompanion.cloud/#/


*** Test Cases ***
LoginTest
#    create webdriver    Chrome  executable_path="C:\driver\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
    sleep    10
    loginapplication

    #we are using keywords insted of code

#    input text    xpath://input[@placeholder='Username']    rahul@dbk.com
#    click element    xpath://input[@id='terms-of-use']
#    sleep    10
#    click button    xpath: //button[normalize-space()='Next']
#    sleep   10
#    input text    xpath://input[@placeholder='Enter password']  Jci12!@
#    click button    xpath://button[normalize-space()='Login']
#    sleep    10
    close browser

*** Keywords ***
loginapplication
    input text    xpath://input[@placeholder='Username']    rahul@dbk.com
    click element    xpath://input[@id='terms-of-use']
    sleep    10
    click button    xpath: //button[normalize-space()='Next']
    sleep   10
    input text    xpath://input[@placeholder='Enter password']  Jci12!@
    click button    xpath://button[normalize-space()='Login']
    sleep    10

