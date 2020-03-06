*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 User Registration
    [Tags]  regression
    log to console  This is user registration test

TC2 Login
    [Tags]  sanity
    log to console  This is login test

TC3 UserDetails
    [Tags]  regression
    log to console  This is UserDetails test

TC4 Logout
    [Tags]  sanity
    log to console  This is Logout test

# To run perticular test of [Tags] name:--> robot --iinclude=sanity testcases/tagging.robot
# To run a multiple test cases we need to use:--> robot -i sanity -i regression tests/tagging.robot
# To exclude a perticular test of [Tags] name:--> robot -e regression testcases/tagging.robot
# To exclude and iclude test of [Tags] name:--> robot -e sanity -i regression testcases/tagging.robot
