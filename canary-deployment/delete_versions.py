import boto3


def clean_old_lambda_versions(client):
    functions = client.list_functions()['Functions']
    for function in functions:
        arn = function['FunctionArn']
        print(arn)
        all_versions = []

        versions = client.list_versions_by_function(
            FunctionName=arn)
        # Page through all the versions
        while True:
            page_versions = [int(v['Version']) for v in versions['Versions'] if not v['Version'] == '$LATEST']
            all_versions.extend(page_versions)
            try:
                marker = versions['NextMarker']
            except:
                break
            versions = client.list_versions_by_function(
                FunctionName=arn, Marker=marker)

        # Sort and keep the last 2
        all_versions.sort()
        print('Which versions must go?')
        print(all_versions[0:-2])
        print('Which versions will live')
        print(all_versions[-2::])
        for chopBlock in all_versions[0:-2]:
            functionArn = '{}:{}'.format(arn, chopBlock)
            print('When uncommented, will run: delete_function(FunctionName={})'.format(functionArn))
            # I want to leave this commented in Git for safety so we don't run it unscrupulously
            # client.delete_function(FunctionName=functionArn)  # uncomment me once you've checked


if __name__ == '__main__':
    client = boto3.client('lambda', region_name='eu-west-2')
    clean_old_lambda_versions(client)
