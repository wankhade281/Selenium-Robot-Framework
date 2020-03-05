*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser     http://demowebshop.tricentis.com/register  chrome\
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10 seconds

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    select radio button     Gender  M

    input text  name:FirstName  Chetan
    input text  name:LastName   Wankhade
    input text  name:Email  wankhadechetan281@gmail.com
    input text  name:Password   chetan123
    input text  name:ConfirmPassword    chetan123