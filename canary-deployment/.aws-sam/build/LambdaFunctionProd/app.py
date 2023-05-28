import json


def lambda_canary(event, context):
    stage_variables = event['stageVariables']
    # Use stage variables in your Lambda function logic
    variable = stage_variables['canary_variable']
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "This is Canary deployment Testing",
            "messages": "This is another version",
            "stage_variable": variable
        }),
    }


def lambda_prod(event, context):
    try:
        stage_variables = event['stageVariables']
        # Use stage variables in your Lambda function logic
        variable = stage_variables['prod_variable']
        return {
            "statusCode": 200,
            "body": json.dumps({
                "message": "This is Prod deployment Testing",
                "messages": "This is version 1 of my function",
                "stage_variable": variable
            }),
        }
    except Exception as ex:
        return {
            "body": json.dumps({
                f"{ex}"
            }),
        }


