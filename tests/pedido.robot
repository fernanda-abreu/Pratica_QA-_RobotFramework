* Settings *

Resource        ${EXECDIR}/resources/base.robot
Test Setup      Star Session
Test Teardown   Take Screenshot

* Test Case *
Deve realizar um novo pedido em dinheiro

    ${order_json}       Get JSON        order.json

    Go To Restaurants
    Choose Restaurant  ${order_json}


    FOR     ${product}      IN       @{order_json["products"]}
        Add To Card                  ${product["name"]}
        Should Add to Cart           ${product["name"]}

    END

    Go Checkout
    Fill Data Customer              ${order_json["customer"]}   
    Select Payment Option           ${order_json["payment"]} 
    Pay order
    Order Should Be Completed
    
    #sleep                10s   

