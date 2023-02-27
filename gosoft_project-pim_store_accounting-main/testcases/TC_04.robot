*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website

*** Test Cases ***
Tc workflow case 04
    [Tags]      TC04     web
    [Documentation]      Tc workflow case 04 full flow
    
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Input infomation on home page     ${tc_04['date_from']}     ${tc_04['date_to']}    ${tc_04['area']}    ${tc_04['store']}
    home_page.Verify Exta can be check
    home_page.Verify counting sampling can be check
    home_page.Verify status correct data can be uncheck
    home_page.Verify status audit accountant can be check
    home_page.Click search button

    home_feature.Verify table infomation should be correct            ${tc_04['counting_date']}    ${tc_04['store']}    ${tc_04['branch']}
    ...     ${tc_04['area']}     ${tc_04['type']}    ${tc_04['status']}    ${tc_04['price']}    ${tc_04['sell']}
    ...     ${tc_04['issue_date']}    ${tc_04['count']}