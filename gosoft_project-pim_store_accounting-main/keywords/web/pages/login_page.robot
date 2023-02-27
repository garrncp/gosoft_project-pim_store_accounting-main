*** Variables ***
${login_page.username_field}        xpath=//input[@name="j_username"]
${login_page.password_field}        xpath=//input[@name="j_password"]
${login_page.login_button}          xpath=//input[@class="RBbutton" and @value="login"]
${login_page.reset_button}          xpath=//input[@class="RBbutton" and @value="reset"]
${login_page.ddl_module}            xpath=//select[@name="moduleDD"]/option[@value="{label}"]
${login_page.submit_button}         xpath=//input[@class="RBbutton" and @value="submit"]



*** Keywords ***
Input username
    [Documentation]     Input username
    [Arguments]      ${username}
    DobbyWebCommon.Input text to element when ready   ${login_page.username_field}     ${username}

Input password
    [Documentation]     Input password
    [Arguments]      ${password}
    DobbyWebCommon.Input text to element when ready   ${login_page.password_field}    ${password}

Select module name
    [Documentation]     Select module name
    [Arguments]      ${label}
    ${module_drop_down}       String.Replace string                   ${login_page.ddl_module}        {label}         ${label}
    DobbyWebCommon.Click element when ready                           ${module_drop_down}
      
Click login button
    [Documentation]     Tap login button
    DobbyWebCommon.Click element when ready         ${login_page.login_button}

Click submit button
    [Documentation]     Tap submit button
    DobbyWebCommon.Click element when ready         ${login_page.submit_button}