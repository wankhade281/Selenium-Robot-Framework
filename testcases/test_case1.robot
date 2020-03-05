*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.linkedin.com/home
${browser}  chrome

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    click link  xpath://a[@class='nav__button-secondary']
    input text  id:username     wankhadechetan281@gmail.com
    input text  id:password     chetan123
    click element   xpath://button[@class='btn__primary--large from__button--floating']
    sleep   10
    close browser

*** Keywords ***
