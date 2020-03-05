*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TestingFrames
    open browser    https://seleniumhq.github.io/selenium/docs/api/java/index     chrome
    maximize browser window
    select frame    packageListFrame    # id name xpath
    click link      org.openqa.selenium
    unselect frame
    sleep   3

    select frame    packageFrame
    click link      WebDriver
    unselect frame
    sleep   3

    select frame    classFrame
    click link      Index
    unselect frame
    sleep   3

    close browser