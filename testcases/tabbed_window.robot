*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    http://demo.automationtesting.in/Windows.html     chrome
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
    select window  title=Sakinalium | Home                 # select window by id or title only
    click element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    sleep   3
    close all browsers