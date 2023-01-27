# Amazon API Gateway REST API with IAM authorizer

The SAM template deploys a Amazon API Gateway REST API endpoint that uses IAM credentials for access control. 
It is also configured use the IAM credentials passed to invoke a dummy Lambda function. 
IAM users and associated policies are created for testing purposes.


## Deployment Instructions

1. Activate virtual env
    ``` 
    source env/bin/bin/bin/activate
    ```
2. Change directory to the pattern directory:
    ```
    cd Iam-ApiGateway-app
    ```
3. From the command line, use AWS SAM to deploy the AWS resources for the pattern as specified in the template.yml file:
    ```
    sam deploy -g
    ```
1. During the prompts:
    * Enter a stack name
    * Select the desired AWS Region
    * Allow SAM to create roles with the required permissions if needed.

    Once you have run guided mode once, you can use `sam deploy` in future to use these defaults.

1. Note the outputs from the SAM deployment process. These contain the resource names and/or ARNs which are used for 
   testing.

## Testing
The stack will output the **api endpoint** and **username** for both an authorized user and an unauthorized user. 
First let's generate access keys for those users.

This can easily be done using the CLI as a priviled users:

```
$ aws iam create-access-key --user-name apigw-iam-AuthorizedUser-xxxxxxxxx
```

Take note of `AccessKeyId` and `SecretAccessKey`. Now configure postman authorization as follows:

![Postman authentication](./img/postman-auth.png)

Now repeat the same process, now for the unauthorized user

## Cleanup
 
1. Delete the stack
    ```bash
    aws cloudformation delete-stack --stack-name STACK_NAME
    ```
1. Confirm the stack has been deleted
    ```bash
    aws cloudformation list-stacks --query "StackSummaries[?contains(StackName,'STACK_NAME')].StackStatus"
    ```
----
Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.

SPDX-License-Identifier: MIT-0