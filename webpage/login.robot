*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  file:///home/admin1/Demo1/PycharmProjects/robotframework[selenium]/webpage/login.html
${browser}  chrome

*** Test Cases ***
Login
    open browser    ${url}   ${browser}
    maximize browser window
    input text  xpath:/html/body/div[1]/div/div/div[1]/div[1]/input     wankhadechetan281@gmail.com
    input text  xpath:/html/body/div[1]/div/div/div[1]/div[1]/input     chetan123
#    click element   xpath://button[@class='btn__primary--large from__button--floating']
#    sleep   10
#    close browser

*** Keywords ***
