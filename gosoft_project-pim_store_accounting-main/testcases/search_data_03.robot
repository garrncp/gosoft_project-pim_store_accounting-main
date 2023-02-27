*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website


*** Test Cases ***
search data input date to infomation field
    [Tags]               search_data
    [Documentation]      search data input date to infomation field

    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Clear data infomation field

    home_page.Input date to      ${tc_01['date_to']}
    home_page.Click search button

    SeleniumLibrary.Alert Should Be Present            ${message['date_alert']}        ${message['accept']}





    