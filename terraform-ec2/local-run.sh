#!/bin/bash
export AWS_PROFILE=default
export AWS_REGION=us-east-1

# Refresh SSO login
aws sso login --profile $AWS_PROFILE

# Get temporary creds from AWS CLI
CREDS=$(aws sso get-role-credentials --account-id <ACCOUNT_ID> --role-name <ROLE_NAME> --profile $AWS_PROFILE --output json)

export AWS_ACCESS_KEY_ID=$(echo $CREDS | jq -r '.roleCredentials.accessKeyId')
export AWS_SECRET_ACCESS_KEY=$(echo $CREDS | jq -r '.roleCredentials.secretAccessKey')
export AWS_SESSION_TOKEN=$(echo $CREDS | jq -r '.roleCredentials.sessionToken')

terraform init -reconfigure
