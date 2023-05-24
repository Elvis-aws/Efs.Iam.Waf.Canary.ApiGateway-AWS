

***********************
Setting stage variables
***********************
    - You must have an API available in API Gateway
    - You must have deployed the API at least once
    - You must have created the first stage for a deployed API
        - Publish lambda function
        - Create function versions
        - Create lambda Aliases eg test, dev, prod pointing to different lambda versions
        - Use proxy integration
        - Where you select the lambda function to be triggered add the stage variable at the end
             MyLambdaFuntionName:${stageVariables.lambdaAlias}
             ${stageVariables.function} (When you have different functions)
        *********************************
        Add Permission to Lambda Function
        *********************************
            - aws lambda add-permission --function-name arn:aws:lambda:us-east-1:account-id:function:HelloWorld --source-arn arn:aws:execute-api:us-east-1:account-id:api-id/*/GET/lambdasv1 --principal apigateway.amazonaws.com --statement-id statement-id-guid --action lambda:InvokeFunction --region eu-west2
            - aws lambda add-permission    --function-name "arn:aws:lambda:eu-west-2:934433842270:function:demo_Lambda:Dev"    --source-arn "arn:aws:execute-api:eu-west-2:934433842270:gfpih0o5rd/*/POST/employee"    --principal apigateway.amazonaws.com    --statement-id 955b065a-c612-4059-85aa-34e852c79a4d    --action lambda:InvokeFunction
            - (Make sure to replace ${stageVariables.function} with the Lambda function Alias)
            - e.g  MyLambdaFuntionName:Alias
            - This adds resource based policy to ur function
        - Deploy API in the environment of your chosen
        - Go to stage variables section and set Name: lambdaAlias value:Alias of your aliases
        - Do this for all configured stages
        - Copy stage Url and invoke API adding resource if necessary
**************
Stage settings
**************
    - Enable caching at stage level
    - Firewall WAF
    - Method throttling so some methods are not called often
    - Enable CloudWatch logs and metrics
    - Custom access logging
    - X-Ray Tracing
    - Deployment history
    - Canary