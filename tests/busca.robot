*** Settings ***
Library   Browser

*** Test Cases ***
Deve buscar um único restaurante

    New Browser     chromium        False
    New Page        http://parodifood.qaninja.academy/  
   
# Erro aparecendo na instalação do VS CODE - não tem permissão
   
# Checkpoint - problema iniciou no span
    #Get Text        css=span    contains    Nunca foi tão engraçado pedir comida
    
# Checkpoint  
    Click           text=Estou com fome!
    Get Text        css=h1 strong   contains    Ta na hora de matar a fome!
    Sleep           5
    
    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      Debuger     #input
    #Sleep           10                                                         #dorme por 10 segundos
    Wait For Elements State     (//div[@class='place-info-box'])[1]     visible     10          #10 segundos que ele tem para rodar 
    Get Text        css=.place-info-box      contains        DEBUGER KING       #output
    
    
    #Get Element Count       css=.place-info-box     equal       1
                    #NÃO ACHEI ESSE COUNT NO PREENCHIMENTO AUTOMÁTICO, SABE PQ? AULA 2 - 00:26
    # think time
    Sleep           5
    Take Screenshot

Deve buscar por categoria

    New Browser     chromium        False
    New Page        http://parodifood.qaninja.academy/  
   
# Erro aparecendo na instalação do VS CODE - não tem permissão
   
# Checkpoint - problema iniciou no span
    #Get Text        css=span    contains    Nunca foi tão engraçado pedir comida
    
# Checkpoint  
    Click           text=Estou com fome!
    Get Text        css=h1 strong   contains    Ta na hora de matar a fome!
    Sleep           5
    
    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      Cafe     #input
    #Sleep           5                                                         #dorme por 10 segundos
    Wait For Elements State     (//div[@class='place-info-box'])[1]     visible     10          #10 segundos que ele tem para rodar 
    Get Text        css=.place-info-box      contains        STARBUGS COFFEE       #output

    #Get Element Count       css=.place-info-box     equal       1
                    #NÃO ACHEI ESSE COUNT NO PREENCHIMENTO AUTOMÁTICO, SABE PQ? AULA 2 - 00:26
    # think time
    Sleep           5
    Take Screenshot

Deve buscar todos os restaurantes

    New Browser     chromium        False
    New Page        http://parodifood.qaninja.academy/  
   
# Erro aparecendo na instalação do VS CODE - não tem permissão
   
# Checkpoint - problema iniciou no span
    ####Get Text        css=span    contains    Nunca foi tão engraçado pedir comida
    
# Checkpoint  
    Click           text=Estou com fome!
    Get Text        css=h1 strong   contains    Ta na hora de matar a fome!
    Sleep           5
    
    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      a     #input
    #Sleep           5                                                 
    Wait For Elements State     (//div[@class='place-info-box'])[1]    visible     10          #dorme por 10 segundos
    
    Get Element Count       css=.place-info-box     equal       5
                   #NÃO ACHEI ESSE COUNT NO PREENCHIMENTO AUTOMÁTICO, SABE PQ? AULA 2 - 00:26
    # think time
    Sleep           5
    Take Screenshot