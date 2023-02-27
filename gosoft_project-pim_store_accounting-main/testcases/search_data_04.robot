*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website

*** Variables ***
@{counting_date_list}  ${search_data_04['counting_date']['row_1']}  ${search_data_04['counting_date']['row_2']}  ${search_data_04['counting_date']['row_3']}
...                    ${search_data_04['counting_date']['row_4']}  ${search_data_04['counting_date']['row_5']}

@{store_code_list}     ${search_data_04['store_code']['row_1']}  ${search_data_04['store_code']['row_2']}  ${search_data_04['store_code']['row_3']}
...                    ${search_data_04['store_code']['row_4']}  ${search_data_04['store_code']['row_5']}

@{branch_list}         ${search_data_04['branch']['row_1']}  ${search_data_04['branch']['row_2']}  ${search_data_04['branch']['row_3']}
...                    ${search_data_04['branch']['row_4']}  ${search_data_04['branch']['row_5']}

@{area_list}           ${search_data_04['area']['row_1']}  ${search_data_04['area']['row_2']}  ${search_data_04['area']['row_3']}
...                    ${search_data_04['area']['row_4']}  ${search_data_04['area']['row_5']}

@{type_list}           ${search_data_04['type']['row_1']}  ${search_data_04['type']['row_2']}  ${search_data_04['type']['row_3']}
...                    ${search_data_04['type']['row_4']}  ${search_data_04['type']['row_5']}

@{status_list}         ${search_data_04['status']['row_1']}  ${search_data_04['status']['row_2']}  ${search_data_04['status']['row_3']}
...                    ${search_data_04['status']['row_4']}  ${search_data_04['status']['row_5']}

@{official_price_list}      ${search_data_04['official_price']['row_1']}  ${search_data_04['official_price']['row_2']}  ${search_data_04['official_price']['row_3']}
...                         ${search_data_04['official_price']['row_4']}  ${search_data_04['official_price']['row_5']}

@{adj_sell_list}       ${search_data_04['adj_sell']['row_1']}  ${search_data_04['adj_sell']['row_2']}  ${search_data_04['adj_sell']['row_3']}
...                    ${search_data_04['adj_sell']['row_4']}  ${search_data_04['adj_sell']['row_5']}

@{issue_date_list}     ${search_data_04['issue_date']['row_1']}  ${search_data_04['issue_date']['row_2']}  ${search_data_04['issue_date']['row_3']}
...                    ${search_data_04['issue_date']['row_4']}  ${search_data_04['issue_date']['row_5']}

@{count_list}          ${search_data_04['count']['row_1']}  ${search_data_04['count']['row_2']}  ${search_data_04['count']['row_3']}
...                    ${search_data_04['count']['row_4']}  ${search_data_04['count']['row_5']}


*** Test Cases ***
search data all check status
    [Tags]               search data
    [Documentation]      search data all check status
           
    common_feature.Open Store Accounting Website and go to home page      ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}        
    home_feature.Clear data infomation field

    home_page.Input date from    ${tc_01['date_from']}
    home_page.Input date to      ${tc_02['date_to']}

    home_feature.Select check all status and verify
    
    home_page.Click search button

    home_feature.Verify data row on table should be     ${counting_date_list}    ${store_code_list}   ${branch_list}   ${area_list}     ${type_list} 
    ...        ${status_list}    ${official_price_list}    ${adj_sell_list}    ${issue_date_list}       ${count_list}






    