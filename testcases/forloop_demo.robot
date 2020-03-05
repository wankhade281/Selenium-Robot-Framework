*** Test Cases ***
#ForLoop1
#    : FOR   ${i}    IN RANGE    1   10
#    \   LOG TO CONSOLE  ${i}

#ForLoop2
#    : FOR   ${i}    IN  1 2 3 4 5 6 7 8 9 10
#    \   LOG TO CONSOLE  ${i}

#Forloop3withList
#    @{items}    create list     1   2   3   4   5   6   7   8   9
#    : FOR   ${i}    IN  @{items}
#    \   LOG TO CONSOLE  ${i}

#Forloop4
#    : FOR   ${i}    IN      john    david   smith   scott
#    \   LOG TO CONSOLE  ${i}


Forloop5withList
    @{items}    create list     1   2   3   4   5   6   7   8   9
    : FOR   ${i}    IN  @{items}
    \   log to console  ${i}
    \   exit for loop if    ${i}==3