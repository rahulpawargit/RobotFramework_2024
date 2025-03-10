*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/Loginkeywords.robot
Resource    ../../Resources/resources_login.robot
Resource    ../Resources/SearchItem_Keywords.robot
#Suite Setup
#Suite Teardown
#Test Setup
#Test Teardown

*** Variables ***

${Browser}  chrome
${siteURL}      https://demowebshop.tricentis.com/
${uname}     pwrahul@gmail.com
${pwd}  123456
${itemname}     Computing and Internet


*** Test Cases ***
LoginTestCase_1
    Loginkeywords.Open my browser     ${siteURL}    ${Browser}
    Loginkeywords.Clickon LoginLink
    Loginkeywords.Enter username    ${uname}
    Loginkeywords.Enter Password    ${pwd}
    Loginkeywords.Click on Login button
#    Sleep    10
#    Wait Until Page Contains    Dashboard
    Loginkeywords.Verify Login success

SearchIteam TestCases
    SearchItem_Keywords.Click on SearchBox
    SearchItem_Keywords.Enter Serach Item    ${itemname}
    SearchItem_Keywords.Click on Searchbutton
    SearchItem_Keywords.Verify ItemSearch





    





