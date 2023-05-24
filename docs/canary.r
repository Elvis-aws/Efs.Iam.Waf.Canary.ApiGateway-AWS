

*****************
Canary Deployment
*****************
    - Deploy API e.g Prod
    - Navigate to canary in API stage
    - Create canary
    - Configure deployment percentage
    - Deploy the API you want to test to the Canary you created e.g Test
    - Make sure before deploying your new code, change the integration to the correct lambda function
    - Make request to Prod api and you should be directed to both Prod and Test
    - Promote Canary into Prod