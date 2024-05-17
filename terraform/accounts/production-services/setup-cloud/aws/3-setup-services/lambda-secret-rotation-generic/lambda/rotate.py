import json
import string
import random

import boto3

def lambda_handler(event, context):
    if event['Step'] == 'createSecret':
        client = boto3.client('secretsmanager')
        response = client.put_secret_value(
            SecretId=event['SecretId'],
            ClientRequestToken=event['ClientRequestToken'],
            SecretString=get_random_string(8)
        )

        if response['ARN'] != event['SecretId']:
            return {
                'statusCode': 500,
                'body': json.dumps('Failed updating secret')
            }

    return {
        'statusCode': 200,
        'body': json.dumps('OK')
    }

def get_random_string(length):
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(length))
