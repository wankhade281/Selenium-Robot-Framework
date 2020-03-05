*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/resources.robot

*** Variables ***
${url}  https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin
${browser}  chrome

*** Test Cases ***
ScrollingTest
    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    log to console  ${PageTitle}
    log     ${PageTitle}
    input text  id:username     wankhadechetan281@gmail.com
    input text  id:password     chetan123
    click element   xpath://button[@class='btn__primary--large from__button--floating']
    sleep   3
#    execute javascript  window.scrollTo(1000, 1303)
#    sleep   3
#    scroll element into view    xpath://a[@id='ember185']
#    sleep   3
    execute javascript  window.scrollTo(0,document.body.scrollHeight)  # goes upto end of the page
    sleep   5
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)   # come to the starting of the page
    sleep   3
    close browser