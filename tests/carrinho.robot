* Settings *

Resource        ${EXECDIR}/resources/base.robot
Test Setup      Star Session
Test Teardown   Take Screenshot

* Test Cases *
Deve adicionar um item ao carrinho

    # ${name}     Set Variable        STARBUGS COFFEE
    #${desc}     Set Variable        Nada melhor que um café pra te ajudar a resolver um bug.

    &{restaurant}       Create Dictionary       name=Starbugs Coffee        desc=Nada melhor que um café pra te ajudar a resolver um bug.
 
   Go To Restaurants
   Choose Restaurant        ${restaurant}

  # Sleep        10


* Keywords *

Choose Restaurant
    [Arguments]     ${restaurant}

    Click           text=${restaurant["name"]}    force=True
    
    Wait For Elements State     css=#detail             visible     10
    Get Text    css=#detail         contains                ${restaurant["desc"]}

