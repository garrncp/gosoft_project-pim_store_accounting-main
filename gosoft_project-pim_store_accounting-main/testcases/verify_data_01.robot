*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website


*** Test Cases ***
Verify data home page
    [Tags]               Verify_data
    [Documentation]      Verify data home page
       
    ${first_date}            common_keywords.Get first day of the month
    ${current_date_minus}    common_keywords.Get current date minus one
    
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Verify counting date come to homepage    ${first_date}     ${current_date_minus}

    