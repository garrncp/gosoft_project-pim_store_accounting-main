*** Variables ***
${home_page.date_from}                     id=form1:dateFrom
${home_page.date_to}                       id=form1:dateTo
${home_page.area}                          id=form1:areaCode
${home_page.branch}                        id=form1:branchCode
${home_page.bsn_kundsan}                   id=form1:checkbox5
${home_page.bsn_yuuri}                     id=form1:checkbox6
${home_page.bsn_Exta}                      id=form1:checkbox7
${home_page.bsn_books_stand_alone}         id=form1:checkbox8
${home_page.sts_import}                    id=form1:checkbox0
${home_page.sts_Invalid_data}              id=form1:checkbox1
${home_page.sts_correct_data}              id=form1:checkbox2
${home_page.sts_audit_accountant}          id=form1:checkbox3
${home_page.sts_confirm_data}              id=form1:checkbox4
${home_page.count_normal}                  id=form1:checkbox9
${home_page.count_sampling}                id=form1:checkbox10
${home_page.btn_cancel}                    id=form1:cancel
${home_page.btn_search}                    id=form1:search
${home_page.btn_page_first}                id=form1:table1:deluxe1__pagerFirst
${home_page.btn_page_last}                 id=form1:table1:deluxe1__pagerLast
${home_page.btn_page_previous}             id=form1:table1:deluxe1__pagerPrevious
${home_page.btn_page_next}                 id=form1:table1:deluxe1__pagerNext

${home_page.td_counting_date}              id=form1:table1:0:text2
${home_page.td_store_code}                 id=form1:table1:0:text6
${home_page.td_branch}                     id=form1:table1:0:text3
${home_page.td_area}                       id=form1:table1:0:text8
${home_page.td_type}                       id=form1:table1:0:text10
${home_page.td_status}                     id=form1:table1:0:text12
${home_page.td_official_sale_price}                id=form1:table1:0:text24
${home_page.td_advertising_selling_price}          id=form1:table1:0:text24_1
${home_page.td_issue_date}                  id=form1:table1:0:text26
${home_page.td_counting}                    id=form1:table1:0:text16

${home_page.table}                          xpath=//tr[@class="bgRowDataTable"]

${home_page.td_counting_date_index}         id=form1:table1:{index}:text2
${home_page.td_store_code_index}            id=form1:table1:{index}:text6
${home_page.td_branch_index}                id=form1:table1:{index}:text3
${home_page.td_area_index}                  id=form1:table1:{index}:text8
${home_page.td_type_index}                  id=form1:table1:{index}:text10
${home_page.td_status_index}                id=form1:table1:{index}:text12
${home_page.td_official_sale_price_index}                id=form1:table1:{index}:text24
${home_page.td_advertising_selling_price_index}                id=form1:table1:{index}:text24_1
${home_page.td_issue_date_index}                id=form1:table1:{index}:text26
${home_page.td_counting_index}                id=form1:table1:{index}:text16



*** Keywords ***
Input date from
    [Documentation]     Input date from
    [Arguments]         ${date}
    DobbyWebCommon.Input text to element when ready     ${home_page.date_from}        ${date}
Input date to
    [Documentation]     Input date to
    [Arguments]         ${date}
    DobbyWebCommon.Input text to element when ready     ${home_page.date_to}          ${date}
Input area
    [Documentation]     Input area
    [Arguments]         ${area}
    DobbyWebCommon.Input text to element when ready     ${home_page.area}       ${area}

Input branch
    [Documentation]     Input branch
    [Arguments]         ${branch}
    DobbyWebCommon.Input text to element when ready     ${home_page.branch}     ${branch}

Verify kundsan can be check
    [Documentation]     Verify kundsan can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.bsn_kundsan}

Verify yuuri can be check
    [Documentation]     Verify yuuri can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.bsn_yuuri}

Verify Exta can be check
    [Documentation]     Verify Exta can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.bsn_Exta}

Verify books stand alone can be check
    [Documentation]     Verify books stand alone can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.bsn_books_stand_alone}

Verify status import can be check
    [Documentation]     Verify status import can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.sts_import}

Verify status Invalid data can be check
    [Documentation]     Verify status Invalid data can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.sts_Invalid_data}

Verify status correct data can be check
    [Documentation]     Verify status correct data can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.sts_correct_data}

Verify status audit accountant can be check
    [Documentation]     Verify status audit accountant can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.sts_audit_accountant}

Verify status confirm datat can be check
    [Documentation]     Verify status confirm datat can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.sts_confirm_data}

Verify counting normal can be check
    [Documentation]     Verify counting normal can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.count_normal}

Verify counting sampling can be check
    [Documentation]     Verify counting sampling can be check
    common_keywords.Select checkbox and verify checkbox is checked          ${home_page.count_sampling}

Verify status correct data can be uncheck
    [Documentation]     Verify status correct data can be uncheck
    common_keywords.Unselect checkbox and verify checkbox is unchecked          ${home_page.sts_correct_data}

Verify date from should be
    [Documentation]     Verify date from should be
    [Arguments]         ${date_from}
    common_keywords.Field should have value  ${home_page.date_from}       ${date_from}

Verify date to should be
    [Documentation]     Verify date to should be
    [Arguments]         ${date_to}
    common_keywords.Field should have value  ${home_page.date_to}       ${date_to} 

Verify counting date in table should be 
    [Documentation]    Verify counting date in table should be
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_counting_date}    ${value}

Verify store code in table should be 
    [Documentation]    Verify store code in table should be
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_store_code}     ${value}

Verify branch in table should be 
    [Documentation]    Verify branch in table should be 
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_branch}     ${value}

Verify area in table should be 
    [Documentation]    Verify area in table should be
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_area}     ${value}

Verify type in table should be 
    [Documentation]    Verify type in table should be 
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_type}     ${value}

Verify status in table should be 
    [Documentation]    Verify status in table should be 
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_status}     ${value}

Verify official sale price in table should be 
    [Documentation]    Verify official sale price in table should be  
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_official_sale_price}     ${value}

Verify advertising selling price in table should be 
    [Documentation]    Verify advertising selling price in table should be  
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_advertising_selling_price}     ${value}

Verify issue date in table should be 
    [Documentation]    Verify issue date in table should be 
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_issue_date}     ${value}

Verify counting in table should be 
    [Documentation]    Verify counting in table should be 
    [Arguments]         ${value}        
    SeleniumLibrary.Element Text Should Be    ${home_page.td_counting}     ${value}

Click search button
    [Documentation]     Click search button
    DobbyWebCommon.Click element when ready         ${home_page.btn_search}

Click cancel button
    [Documentation]     Click cancel button
    DobbyWebCommon.Click element when ready         ${home_page.btn_cancel}


Clear date from text field
    [Documentation]     Clear date from text field
    SeleniumLibrary.Clear element text      ${home_page.date_from}

Clear date to text field
    [Documentation]     lear date to text field
    SeleniumLibrary.Clear element text      ${home_page.date_to}

Get row index on table
    [Documentation]     Get row index on table
    ${data}    SeleniumLibrary.Get Element Count       ${home_page.table} 
    [Return]    ${data} 


Get data counting date row index on table should be
    [Documentation]     Get data counting date row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_counting_date_index}    {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get store code row index on table should be
    [Documentation]     Get store code row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_store_code_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get branch row index on table should be
    [Documentation]     Get branch row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_branch_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get area row index on table should be
    [Documentation]     Get area row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_area_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get type row index on table should be
    [Documentation]     Get type row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_type_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get status row index on table should be
    [Documentation]     Get status row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_status_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get official sale price row index on table should be
    [Documentation]     Get official sale price row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_official_sale_price_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get advertising selling price row index on table should be
    [Documentation]     Get advertising selling price row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_advertising_selling_price_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get issue date row index on table should be
    [Documentation]     Get issue date row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_issue_date_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}

Get counting row index on table should be
    [Documentation]     Get counting row index on table should be
    [Arguments]    ${index}    ${list}    ${number}=0    
    @{textList}=    Create List
    FOR   ${number}    IN RANGE    ${index}  
          ${new_number}       Convert To String      ${number} 
          ${data}        String.Replace string       ${home_page.td_counting_index}     {index}     ${new_number}
          ${new_data}    SeleniumLibrary.Get text       ${data} 
          Append To List  ${textList}  ${new_data}
    END
    Lists Should Be Equal  ${textList}    ${list}




    