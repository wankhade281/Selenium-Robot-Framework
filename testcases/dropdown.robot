*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Handling DrpDwns and Lists
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1seconds

    select from list by label   continents  Asia
    sleep   3
    select from list by index  continents  5


    # List Box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep   3
    unselect from list by label     selenium_commands   Switch Commands
    close browser

*** Keywords ***
