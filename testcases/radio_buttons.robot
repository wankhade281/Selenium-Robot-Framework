*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Testing RadioButton and CheckBox
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1seconds

    # selecting radio button
    select radio button     sex     Female    # for select radio button we need to pass 2 parameter name & value
    select radio button     exp     5

    # Select Check Box
    select checkbox     BlackTea
    select checkbox     RedTea

    unselect checkbox     BlackTea
    close browser


*** Keywords ***
