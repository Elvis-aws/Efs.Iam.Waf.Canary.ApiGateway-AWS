# AWS WAF to Amazon API Gateway

This pattern creates an Amazon API Gateway with a WebACL attached to control access. This WebACL limits the requests 
to certain countries. 


## Deployment Instructions
1. cd waf-apigw-rest
2. sam deploy --guided
3. sam deploy --guided
4. During the prompts:
    * Enter a stack name
    * Enter the desired AWS Region
    * Allow SAM CLI to create IAM roles with the required permissions.


## How it works

The application will only accept requests from countries that are in the country code array for the WAF rule.

## Testing

Deploy the app then go the the provided web address. If you are in the US you will get a 200 response from the backend Lambda funtion. If you are in any other country, you will get a 403 response from the WAF. Change the country codes in the array and redploy to see different results.

## Cleanup
 
1. Delete the stack
    ```bash
    sam delete --stack-name STACK_NAME
    ```
1. Confirm the stack has been deleted
    ```bash
    aws cloudformation list-stacks --query "StackSummaries[?contains(StackName,'STACK_NAME')].StackStatus"
    ```
----
Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.

SPDX-License-Identifier: MIT-0
