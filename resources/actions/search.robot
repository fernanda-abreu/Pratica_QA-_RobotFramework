* Settings *
Documentation           Ações da funcionalidade de busca de restaurantes

*Variables*
${DIV_BOX_RESTAURANTE}       (//div[@class='place-info-box'])[1]
${DIV_BOX_RESTAURANTE_ALL}       (//div[@class='place-info-box'])

* Keywords *  

Go To Restaurants
    Click           text=Estou com fome!
    Get Text        css=h1 strong   contains    Ta na hora de matar a fome!
    Sleep           10

Choose Restaurant
    [Arguments]     ${super_var}

    Click           text=${super_var["restaurant"]}    force=True
    
    Wait For Elements State     css=#detail             visible         ${DEFAULT_TIMEOUT}
    Get Text    css=#detail         contains                ${super_var["desc"]}

    
Search By
   [Arguments]     ${value}

    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      ${value}     #input
    Sleep           5                                                         #dorme por 10 segundos

Restaurant Should Be Visible
    [Arguments]         ${name}
    Wait For Elements State     ${DIV_BOX_RESTAURANTE}     visible     ${DEFAULT_TIMEOUT}          #10 segundos que ele tem para rodar 
    Get Text                    ${DIV_BOX_RESTAURANTE}      contains        ${name}      #output

Restaurant Count Should Be
     [Arguments]         ${qtd}
    
    Wait For Elements State     ${DIV_BOX_RESTAURANTE}     visible     ${DEFAULT_TIMEOUT}
    Get Element Count           ${DIV_BOX_RESTAURANTE_ALL}     equal       ${qtd}