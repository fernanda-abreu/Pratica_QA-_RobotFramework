* Settings *
Documentation       Arquivo base do projeto (tudo começa aqui)

Library             Browser
Library             OperatingSystem

Resource            actions/search.robot
Resource            actions/cart.robot


* Keywords *
Star Session
    New Browser     chromium        False
    New Page        http://parodifood.qaninja.academy/

###Helpers ###

Get JSON

    [Arguments]     ${file_name}

    ${file}         Get File        ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}    Evaluate        json.loads($file)       json

    [return]        ${super_var}