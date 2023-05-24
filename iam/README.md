# Amazon API Gateway REST API with IAM authorizer
The SAM template deploys a Amazon API Gateway REST API endpoint that uses IAM credentials for access control. 


## Deployment Instructions
1. cd iam
2. sam build
3. sam deploy --guided
4. Note the outputs from the SAM deployment process. These contain the resource names and/or ARNs which are used for 
   testing.



## Testing
The stack will output the **api endpoint** and **username** for both an authorized user and an unauthorized user. 

1. First let's generate access keys for those users.
2. This can easily be done using the CLI as a privileged users:
```
$ aws iam create-access-key --user-name [AuthorizedUserUsername value]
aws iam create-access-key --user-name iam-app-AuthorizedUser-349UUCG6SRK0
```
3. Take note of `AccessKeyId` and `SecretAccessKey`. Now configure postman authorization as follows:

![Postman authentication](img/postman-auth.png)

##### Use aswcurl #####
- install => brew install awscurl
awscurl --service execute-api -X GET\
  https://d2ct90pj8b.execute-api.eu-west-2.amazonaws.com/Prod/lambda \
  --region eu-west-2 --access_key AKIA5TEEY4RPCNGM3ZUO --secret_key 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 \
  --security_token SECURITY_TOKEN

## Cleanup
1. sam delete



  
