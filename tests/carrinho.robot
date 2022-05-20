* Settings *

Resource        ${EXECDIR}/resources/base.robot
Test Setup      Star Session
Test Teardown   Take Screenshot

* Test Cases *
Deve adicionar um item ao carrinho

    # ${name}     Set Variable        STARBUGS COFFEE
    #${desc}     Set Variable        Nada melhor que um café pra te ajudar a resolver um bug.

    &{restaurant}       Create Dictionary       restaurant=Starbugs Coffee        desc=Nada melhor que um café pra te ajudar a resolver um bug.
 
    Go To Restaurants
    Choose Restaurant        ${restaurant}
    Add To Card             Starbugs 500 error
    Should Add to Cart      Starbugs 500 error
    Total Cart Should Be        15,60

   # Wait For Elements State         css=#cart tr >> text=Starbugs 500 error        visible         5

    #Sleep        5

Deve adicionar 3 itens ao carrinho
    [tags]          temp
   
    ${cart_json}        Get JSON        cart.json
    Go To Restaurants
    Choose Restaurant        ${cart_json}

    FOR     ${product}      IN       @{cart_json["products"]}
        Add To Card             ${product["name"]}
        Should Add to Cart      ${product["name"]}
    END

    Total Cart Should Be         ${cart_json["total"]}

   # Wait For Elements State         css=#cart tr >> text=Starbugs 500 error        visible         5

    #Sleep        10

