*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website

*** Test Cases ***
Tc workflow case 02
    [Tags]      TC02     web
    [Documentation]      Tc workflow case 02 full flow
    
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Input infomation on home page     ${tc_02['date_from']}     ${tc_02['date_to']}    ${tc_02['area']}    ${tc_02['store']}
    home_page.Verify kundsan can be check
    home_page.Verify Exta can be check
    home_page.Verify counting sampling can be check
    home_page.Verify status correct data can be uncheck
    home_page.Verify status Invalid data can be check
    home_page.Click search button

    home_feature.Verify table infomation should be correct            ${tc_02['counting_date']}    ${tc_02['store']}    ${tc_02['branch']}
    ...     ${tc_02['area']}     ${tc_02['type']}    ${tc_02['status']}    ${tc_02['price']}    ${tc_02['sell']}
    ...     ${tc_02['issue_date']}    ${tc_02['count']}