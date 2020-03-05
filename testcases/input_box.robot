*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.linkedin.com/home
${browser}  chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}   ${browser}
    maximize browser window
    title should be     LinkedIn: Log In or Sign Up
    click link  xpath://a[@class='nav__button-secondary']
    ${"email_txt"}  set variable    id:username
    ${"password_txt"}   set variable    id:password
    Log    Num value is ${"email_txt"}
    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    input text  ${"email_txt"}   wankhadechetan281@gmail.com
    input text  ${"password_txt"}   chetan123
    sleep   10
#    clear element text  ${"email_txt"}
    click link  xpath://button[@class='btn__primary--large from__button--floating']
    sleep   3
    title should be     LinkedIn
    close browser

*** Keywords ***
