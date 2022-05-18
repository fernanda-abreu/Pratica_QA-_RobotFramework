* Settings *
Documentation           Ações da funcionalidade de busca de restaurantes

*Variables*
${DIV_BOX_RESTAURANTE}       (//div[@class='place-info-box'])[1]
${DIV_BOX_RESTAURANTE_ALL}       (//div[@class='place-info-box'])

* Keywords *  

Go To Restaurants
    Click           text=Estou com fome!
    Get Text        css=h1 strong   contains    Ta na hora de matar a fome!
    Sleep           5

Search By
   [Arguments]     ${value}

    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      ${value}     #input
    Sleep           10                                                         #dorme por 10 segundos

Restaurant Should Be Visible
    [Arguments]         ${name}
    Wait For Elements State     ${DIV_BOX_RESTAURANTE}     visible     10          #10 segundos que ele tem para rodar 
    Get Text                    ${DIV_BOX_RESTAURANTE}      contains        ${name}      #output

Restaurant Count Should Be
     [Arguments]         ${qtd}
    
    Wait For Elements State     ${DIV_BOX_RESTAURANTE}     visible     10
    Get Element Count           ${DIV_BOX_RESTAURANTE_ALL}     equal       ${qtd}