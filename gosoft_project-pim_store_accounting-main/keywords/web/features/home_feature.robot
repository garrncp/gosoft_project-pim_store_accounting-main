*** Keywords ***
Input infomation on home page 
    [Documentation]     Input infomation on home page 
    [Arguments]         ${date_from}    ${date_to}    ${area}    ${branch}
    home_page.Input date from      ${date_from}
    home_page.Input date to        ${date_to}
    home_page.Input area           ${area}
    home_page.Input branch         ${branch}


Verify counting date come to homepage
    [Documentation]     Verify counting date come to homepage 
    [Arguments]         ${date_from}    ${date_to}
    home_page.Verify date from should be    ${date_from} 
    home_page.Verify date to should be      ${date_to} 

Select check all status and verify
    [Documentation]     Select check all status and verify
    home_page.Verify status import can be check
    home_page.Verify status Invalid data can be check
    home_page.Verify status correct data can be check
    home_page.Verify status audit accountant can be check
    home_page.Verify status confirm datat can be check

Verify table infomation should be correct
    [Documentation]      Verify table infomation should be correct
    [Arguments]     ${counting_date}    ${store_code}    ${branch}    ${area}
    ...    ${type}    ${status}    ${official_sale_price}     ${advertising_selling_price}
    ...    ${issue_date}    ${counting}
    home_page.Verify counting date in table should be        ${counting_date}
    home_page.Verify store code in table should be       ${store_code}
    home_page.Verify branch in table should be     ${branch}
    home_page.Verify area in table should be       ${area}
    home_page.Verify type in table should be       ${type}
    home_page.Verify status in table should be     ${status}
    home_page.Verify official sale price in table should be         ${official_sale_price}
    home_page.Verify advertising selling price in table should be    ${advertising_selling_price}
    home_page.Verify issue date in table should be     ${issue_date}
    home_page.Verify counting in table should be        ${counting}



Clear data infomation field
    [Documentation]      Verify table infomation should be correct
    home_page.Clear date from text field
    home_page.Clear date to text field
    home_page.Verify status correct data can be uncheck


Verify data row on table should be  
    [Documentation]      Verify data row on table should be 
    [Arguments]    ${counting_date_list}    ${store_code_list}   ${branch_list}   ${area_list}     ${type_list}
    ...            ${status_list}    ${official_price_list}    ${adj_sell_list}    ${issue_date_list}       ${count_list}
    ${index}    home_page.Get row index on table
    home_page.Get data counting date row index on table should be               ${index}    ${counting_date_list}
    home_page.Get store code row index on table should be                       ${index}    ${store_code_list}
    home_page.Get branch row index on table should be                           ${index}    ${branch_list}
    home_page.Get area row index on table should be                             ${index}    ${area_list}
    home_page.Get type row index on table should be                             ${index}    ${type_list}
    home_page.Get status row index on table should be                           ${index}    ${status_list}
    home_page.Get official sale price row index on table should be              ${index}    ${official_price_list}
    home_page.Get advertising selling price row index on table should be        ${index}    ${adj_sell_list}
    home_page.Get issue date row index on table should be                       ${index}    ${issue_date_list}
    home_page.Get counting row index on table should be                         ${index}    ${count_list}

