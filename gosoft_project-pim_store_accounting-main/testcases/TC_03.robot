*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website

*** Test Cases ***
Tc workflow case 03
    [Tags]      TC03     web
    [Documentation]      Tc workflow case 03 full flow
    
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Input infomation on home page     ${tc_03['date_from']}     ${tc_03['date_to']}    ${tc_03['area']}    ${tc_03['store']}
    home_page.Verify Exta can be check
    home_page.Verify counting normal can be check
    home_page.Verify status correct data can be check
    home_page.Click search button


    home_feature.Verify table infomation should be correct            ${tc_03['counting_date']}    ${tc_03['store']}    ${tc_03['branch']}
    ...     ${tc_03['area']}     ${tc_03['type']}    ${tc_03['status']}    ${tc_03['price']}    ${tc_03['sell']}
    ...     ${tc_03['issue_date']}    ${tc_03['count']}