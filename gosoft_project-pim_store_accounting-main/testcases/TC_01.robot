*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website

*** Test Cases ***
Tc workflow case 01
    [Tags]      TC01     web
    [Documentation]      Tc workflow case 01 full flow
    
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Input infomation on home page     ${tc_01['date_from']}     ${tc_01['date_to']}    ${tc_01['area']}    ${tc_01['store']}
    home_page.Verify kundsan can be check
    home_page.Verify Exta can be check
    home_page.Verify counting normal can be check
    home_page.Verify status import can be check
    home_page.Click search button

    home_feature.Verify table infomation should be correct            ${tc_01['counting_date']}    ${tc_01['store']}    ${tc_01['branch']}
    ...     ${tc_01['area']}     ${tc_01['type']}    ${tc_01['status']}    ${tc_01['price']}    ${tc_01['sell']}
    ...     ${tc_01['issue_date']}    ${tc_01['count']}
