*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser     http://demowebshop.tricentis.com/register  chrome\
    maximize browser window

    ${time}=    get selenium timeout
    log to console  ${time}

    set selenium timeout    10 seconds
    wait until page contains    Registration    # wait till 5 sec

    set selenium speed  1 seconds

    select radio button     Gender  M

    input text  name:FirstName  Chetan
    input text  name:LastName   Wankhade
    input text  name:Email  wankhadechetan281@gmail.com
    input text  name:Password   chetan123
    input text  name:ConfirmPassword    chetan123

    close browser