*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationTest
    open browser    https://www.google.com/     chrome
    maximize browser window

    set selenium implicit wait  5 seconds

    ${loc}=     get location
    log to console  ${loc}

    go to   https://www.bing.com/
    ${loc}=     get location
    log to console  ${loc}

    go back
    ${loc}=     get location
    log to console  ${loc}
    close browser
