

************
Lambda-Proxy
************
    - The two possible integrations are Lambda-Proxy and Lambda
        ************
        Lambda-Proxy
        ************
            - Receives the whole request as such to the Lambda 
            - Response message and status code is set up in Lambda
        ******
        Lambda
        ******
            - Request transformation is done in API Gateway
            - Response transformation and status code setting is done in API Gateway 
        **************   
        Method Request 
        ************** 
            - It is the request originated from the client
        *******************
        Integration Request 
        *******************
            - It is the transformation that you can do in API Gateway with the incoming request before sending
              to the back-end
        ********************
        Integration Response
        ********************
            - This is where, you can assign appropriate status code and do response transformation, to the response
              coming from the back-end
        *******************
        Method Response
        *******************
            - It is the response going to the client from api-gateway
    