import json


def lambda_canary(event, context):
    stage_variables = event['stageVariables']
    # Use stage variables in your Lambda function logic
    variable = stage_variables['canary_variable']
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "This is Canary deployment Testing",
            "stage_variable": variable
        }),
    }


def lambda_prod(event, context):
    stage_variables = event['stageVariables']
    # Use stage variables in your Lambda function logic
    variable = stage_variables['prod_variable']
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "This is Prod deployment Testing",
            "stage_variable": variable
        }),
    }
