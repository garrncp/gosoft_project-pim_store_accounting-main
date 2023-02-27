*** Variables ***
${menu_page.menu_name}           xpath=//span[contains(text(), '{label}')]


*** Keywords ***
Click menu 
    [Documentation]     Click menu by locator
    [Arguments]     ${menu}
    ${locator}      String.Replace string           ${menu_page.menu_name}     {label}      ${menu}
    DobbyWebCommon.Click element when ready         ${locator}