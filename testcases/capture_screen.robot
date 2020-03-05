*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.linkedin.com/home
${browser}  chrome

*** Test Cases ***
LoginTC
    open browser    ${url}     ${browser}
    maximize browser window

    click link  xpath://a[@class='nav__button-secondary']
    input text  id:username     wankhadechetan281@gmail.com
    sleep   2
    input text  id:password     chetan123
    sleep   2
    click element   xpath://button[@class='btn__primary--large from__button--floating']
    sleep   5
    capture element screenshot  id:feed-tab-icon     /home/admin1/Demo1/PycharmProjects/robotframework[selenium]/screenshots/logo.png
    capture page screenshot     /home/admin1/Demo1/PycharmProjects/robotframework[selenium]/screenshots/LoginTC.png
    close browser