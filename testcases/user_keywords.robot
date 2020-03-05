*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/resources.robot

*** Variables ***
${url}  https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin
${browser}  chrome

*** Test Cases ***
KeywordsTest
    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    log to console  ${PageTitle}
    log     ${PageTitle}
    input text  id:username     wankhadechetan281@gmail.com
    input text  id:password     chetan123
    click element   xpath://button[@class='btn__primary--large from__button--floating']
    sleep   5
    close browser


#*** Keywords ***
# launch browser is a keyword without [arguments]
#launchBrowser
#    open browser    ${url}      ${browser}
#    maximize browser window

# launch browser is a keyword with [arguments]
#launchBrowser
#    [arguments]     ${appurl}   ${appbrowser}
#    open browser    ${appurl}      ${appbrowser}
#    maximize browser window

# launch browser is a keyword with [arguments] and [return]
#launchBrowser
#    [arguments]     ${appurl}   ${appbrowser}
#    open browser    ${appurl}      ${appbrowser}
#    maximize browser window
#    ${title}=   get title
#    [return]  ${title}