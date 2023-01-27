# Integration of Amazon EFS with AWS Lambda and Amazon API Gateway

This pattern explains how to deploy a SAM application that includes an API Gateway, Lambda Function and Amazon EFS.

## Deployment Instructions
1. From the command line, build the application:
    ```
    $ sam build --use-container
    ```
2. Deploy the application
    ```
    $ sam deploy --guided
    ```
    Take a note of the HTTP API Gateway endpoint \

## Testing

Once the application is deployed, you can test by making some lambda invocation which will write, read and delete 
data from the Amazon EFS storage:

    $ curl https://<HTTP API Gateway Endpoint>
    null

    $ curl -X POST -H "Content-Type: text/plain" -d 'Hello from EFS!' https://<HTTP API Gateway Endpoint>
    Hello from EFS!

    $ curl -X POST -H "Content-Type: text/plain" -d 'Hello again :)' https://<HTTP API Gateway Endpoint>
    Hello from EFS!
    Hello again :)

    $ curl https://<HTTP API Gateway Endpoint>
    Hello from EFS!
    Hello again :)

    $ curl -X DELETE https://<HTTP API Gateway Endpoint>
    Messages deleted.

    $ curl https://<HTTP API Gateway Endpoint>
    null

    
