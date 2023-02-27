*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website

*** Test Cases ***
Tc workflow case 05
    [Tags]      TC05     web
    [Documentation]      Tc workflow case 05 full flow
    
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Input infomation on home page     ${tc_05['date_from']}     ${tc_05['date_to']}    ${tc_05['area']}    ${tc_05['store']}
    home_page.Verify Exta can be check
    home_page.Verify counting sampling can be check
    home_page.Verify status correct data can be uncheck
    home_page.Verify status confirm datat can be check
    home_page.Click search button

   home_feature.Verify table infomation should be correct            ${tc_05['counting_date']}    ${tc_05['store']}    ${tc_05['branch']}
    ...     ${tc_05['area']}     ${tc_05['type']}    ${tc_05['status']}    ${tc_05['price']}    ${tc_05['sell']}
    ...     ${tc_05['issue_date']}    ${tc_05['count']}