*** Keywords ***
Open Store Accounting Website and go to home page 
    [Documentation]      Open Store Accounting Website and go to home page 
    [Arguments]     ${username}     ${password}    ${module}    ${menu}
    common_keywords.Open Store Accounting Website
    # common_keywords.Open Store Accounting Website on Firefox
    login_page.Input username       ${username}
    login_page.Input password       ${password}
    login_page.Click login button
    login_page.Select module name    ${module}
    login_page.Click submit button
    menu_page.Click menu              ${menu}


