*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinkTest
    open browser    https://www.irctc.co.in/nget/train-search   chrome
    maximize browser window
    sleep   5
    ${all_links_count}=     get element count   xpath://a
    log to console  ${all_links_count}

    @{LinkItems}    create list

    : FOR   ${i}    IN RANGE    1   ${AllLinksCount}
    \   ${linkText}=    get text    xpath:(//a)[${i}]
    \   log to console      ${linkText}