*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/login_keywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin
${username}     wankhadechetan281@gmail.com
${password}     chetan123

*** Test Cases ***
LoginTest
    Open my Browser     ${SiteUrl}  ${Browser}
    Enter UserName      ${username}
    Enter Password      ${password}
    Click SignIn
    Verify Successful Login
    close my browsers


# To run a parallel test cases:--> pabot --processes 2(number of test cases) testcases/tab*.robot(directory and test cases name)
# To run and store a result to perticular directory:--> pabot --processes 2 --outputdir results testcases/tab*.robot