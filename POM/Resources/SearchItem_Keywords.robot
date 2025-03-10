*** Settings ***

Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click on SearchBox
    Click Element    ${txtSearchBox}
   
Enter Serach Item
    [Arguments]     ${Itemnane}
    Input Text    ${txtSearchBox}   ${Itemnane}

Click on Searchbutton
        Click Element    ${btnSearchbutton}

Verify ItemSearch
        Page Should Contain Image   ${searcheditem}
        
