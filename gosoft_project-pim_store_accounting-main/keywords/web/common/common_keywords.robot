*** Settings ***
Resource    ${CURDIR}/../../../resources/web/imports.robot

*** Variables ***
${common_keywords.home_button}                  xpath=/a[@href='/StoreAcct/common/MainMenu/MainMenuSA.faces']
${common_keywords.logout_button}                xpath=/a[@href='/StoreAcct/common/LogOut.jsp']

*** Keywords ***
Open Store Accounting Website
    [Documentation]      Open Store Accounting Website
    Set library search order    SeleniumLibrary
    DobbyWebCommon.Open chrome browser      ${remoteUrl}

Open Store Accounting Website on Firefox
    [Documentation]      Open Store Accounting Website on Firefox
    open browser    ${remoteUrl}    Firefox
    Maximize Browser Window

Close Store Accounting Website
    [Documentation]      Close Store Accounting Website
    DobbyWebCommon.Default test teardown
    DobbyWebCommon.Close all browsers and stop proxy server

Click home button
    [Documentation]    Click home button
    DobbyWebCommon.Click element when ready                 ${common_keywords.home_button}  

Click logout button
    [Documentation]    Click logout button
    DobbyWebCommon.Click element when ready                 ${common_keywords.logout_button}

Field should have value
    [Arguments]     ${element}      ${value}     ${replace_string}=${EMPTY}
    IF   '${replace_string}' != '${EMPTY}'
        ${element}      String.Replace string       ${element}     ${replace_string}      ${value}
    END
    DobbyWebCommon.Wait until element is visible except stale       ${element}
    SeleniumLibrary.Textfield value should be       ${element}      ${value}

Select checkbox and verify checkbox is checked
    [Documentation]     Select checkbox and verify checkbox is checked
    [Arguments]         ${element}
    ${is_select}        BuiltIn.Run keyword and return status  SeleniumLibrary.Checkbox Should Be Selected             ${element}
    IF  ${is_select} == ${FALSE}
        DobbyWebCommon.Click element when ready                 ${element}
    END

Unselect checkbox and verify checkbox is unchecked
    [Documentation]     Unselect checkbox and verify checkbox is unselect
    [Arguments]         ${element}
    ${is_not_select}    BuiltIn.Run keyword and return status   SeleniumLibrary.Checkbox Should not Be Selected         ${element}
    IF  ${is_not_select} == ${FALSE}
        DobbyWebCommon.Click element when ready                 ${element}
    END

Get current date
    [Documentation]     Get current date in dd/mm/yyyy format
    ${yyyy}    ${mm}    ${dd}       Get time	year,month,day
    ${yyyy}     Evaluate           ${yyyy}+543
    ${yyyy}     Convert to string       ${yyyy}
    ${yy}=      Remove String    ${yyyy}    2    5
    ${date}     Set variable       ${dd}${mm}${yy}
    [Return]      ${date}   ${dd}    ${mm}     ${yy}    

Get current date minus one
    [Documentation]     Get current date minus one
    ${date}    ${dd}    ${mm}     ${yy}     common_keywords.Get current date
    ${day}     Evaluate    ${dd}-1
    ${new_date}  Set variable       ${day}${mm}${yy}
    [Return]      ${new_date}   

Get first day of the month
    [Documentation]     Get first day of the month
    ${date}    ${dd}    ${mm}     ${yy}     common_keywords.Get current date
    ${day}     Set variable    01
    ${new_date}  Set variable       ${day}${mm}${yy}
    [Return]      ${new_date}