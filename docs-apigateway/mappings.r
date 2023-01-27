

*****************
Mappings Template
*****************
    - Create Lambda function
    - Create method in API Gateway
    - Not a proxy
    - You can either edit integration request or response at API gateway

    ********************
    Integration Response
    ********************
            - Create model
                {
                  "$schema": "http://json-schema.org/draft-04/schema#",
                  "title": "EmployeeModel",
                  "type": "object",
                  "properties": {
                    "id": { "type": "number" },
                    "name": { "type": "string" },
                    "age": { "type": "number" },
                    "email": { "type": "string" }
                    }
                }
            - Go to mapping template
            - Select appication/json
            - Select empty to or model
            - Rename key and value
            - "renamedexample":$inputRoot.example
    *******************
    Integration Request
    *******************
    **************
    Method Request
    **************
    ***************
    Method Response
    ***************



Source => https://www.youtube.com/watch?v=HksMXyfFOyM

{
  "$schema": "http://json-schema.org/draft-04/schema#",
  "title": "GroceryStoreInputModel",
  "type": "object",
  "properties": {
    "department": { "type": "string" },
    "categories": {
      "type": "array",
      "items": { "type": "string" }
    },
    "bins": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "category": { "type": "string" },
          "type": { "type": "string" },
          "price": { "type": "number" },
          "unit": { "type": "string" },
          "quantity": { "type": "integer" }
        }
      }
    }
  }
}

