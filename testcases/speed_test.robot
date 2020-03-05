*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser     http://demowebshop.tricentis.com/register  chrome\
    maximize browser window

    set selenium speed  1 seconds

    select radio button     Gender  M

    input text  name:FirstName  Chetan
    input text  name:LastName   Wankhade
    input text  name:Email  wankhadechetan281@gmail.com
    input text  name:Password   chetan123
    input text  name:ConfirmPassword    chetan123
    ${speed}=   get selenium speed
    log to console  ${speed}
    close browser