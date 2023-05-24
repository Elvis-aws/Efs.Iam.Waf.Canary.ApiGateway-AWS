# Integration of Amazon EFS with AWS Lambda and Amazon API Gateway

This pattern explains how to deploy a SAM application that includes an API Gateway, Lambda Function and Amazon EFS.

## Deployment Instructions
1. cd api-gateway-efs
2. sam build --use-container
3. sam deploy --guided
4. Take a note of the HTTP API Gateway endpoint \


## Testing
1. curl <HTTP API Gateway Endpoint>
2. curl -X POST -H "Content-Type: text/plain" -d 'Hello from EFS!' https://<HTTP API Gateway Endpoint>
3. curl -X POST -H "Content-Type: text/plain" -d 'Hello again :)' https://<HTTP API Gateway Endpoint>
4. curl https://<HTTP API Gateway Endpoint>
5. curl -X DELETE https://<HTTP API Gateway Endpoint>
6. curl https://<HTTP API Gateway Endpoint>
