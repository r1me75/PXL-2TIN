# Java Petstore API

## 1. H2 database

http://localhost:8080/h2-console

database url and credentials can be found in `appplication.properties`.

## 2. API documentation

### Get list of pets

#### Request

`GET /petstore/items/`

    e.g. http://localhost:8080/petstore/items

#### Response

    200 OK
    Content-Type: application/json

    [
        {
            "itemid": "EST-1",
            "productid": "FI-SW-01",
            "category": "FISH",
            "productName": "Angelfish",
            "productDescription": "Salt Water fish from Australia",
            "price": 16.5,
            "specification": "Large"
        },
        {
            "itemid": "EST-2",
            "productid": "FI-SW-01",
            "category": "FISH",
            "productName": "Angelfish",
            "productDescription": "Salt Water fish from Australia",
            "price": 15.5,
            "specification": "Small"
        },
        {
            "itemid": "EST-16",
            "productid": "FL-DLH-02",
            "category": "CATS",
            "productName": "Persian",
            "productDescription": "Friendly house cat, doubles as a princess",
            "price": 93.5,
            "specification": "Adult Female"
        },
        {
            "itemid": "EST-17",
            "productid": "FL-DLH-02",
            "category": "CATS",
            "productName": "Persian",
            "productDescription": "Friendly house cat, doubles as a princess",
            "price": 93.5,
            "specification": "Adult Male"
        },
        {
            "itemid": "EST-22",
            "productid": "K9-PO-02",
            "category": "DOGS",
            "productName": "Poodle",
            "productDescription": "Cute dog from France",
            "price": 135.5,
            "specification": "Adult Male"
        },
        {
            "itemid": "EST-23",
            "productid": "K9-PO-02",
            "category": "DOGS",
            "productName": "Poodle",
            "productDescription": "Cute dog from France",
            "price": 145.49,
            "specification": "Adult Female"
        }
    ]

### Create an order

#### Request

`POST /petstore/orders`

   
    {
        "name": "Nele Custers",
        "email": "nele.custers@pxl.be",
        "lines": [
           {
              "itemid": "EST-1",
              "quantity": 3
           },
           {
              "itemid": "EST-2",
              "quantity": 3
           }
        ]
    }

#### Response

    201 Created
