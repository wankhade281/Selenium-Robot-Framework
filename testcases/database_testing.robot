*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup       Connect To Database   pymysql     ${db_host}  ${db_user}  ${db_pass}  ${db_name}
Suite Teardown    Disconnect From Database


*** Variables ***
${db_host}      localhost
${db_user}      admin1
${db_pass}      admin
${db_name}      dbUser

*** Test Cases ***
Create Person table
    ${output}=  Execute SQL String  Create table person(id integer, first_name varchar(20), last_name varchar(20))
    log to console  ${output}
    should be equal as strings   ${output}   None

