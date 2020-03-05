*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    click element   xpath://*[@id="HTML9"]/div[1]/button   # open alerts
    sleep   3
#    handle alert    dismiss
#    handle alert   accept
#    handle alert    leave
    alert should be present     Press a button!
