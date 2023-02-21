#!/bin/bash

AWS_IAM_ROLE_NAME='hello-aws-lambda-zip-role'

AWS_LAMBDA_FUNCTION_NAME='hello-aws-lambda-zip'
AWS_LAMBDA_PACKAGE_TYPE='Zip'
AWS_LAMBDA_ZIP_FILE='fileb://dist/index.zip'
AWS_LAMBDA_RUNTIME='nodejs18.x'
AWS_LAMBDA_HANDLER='index.handler'
AWS_LAMBDA_ROLE=$(
  aws iam get-role \
    --role-name "$AWS_IAM_ROLE_NAME" \
    --query 'Role.Arn' \
    --output text
)

aws lambda create-function \
  --function-name "$AWS_LAMBDA_FUNCTION_NAME" \
  --package-type "$AWS_LAMBDA_PACKAGE_TYPE" \
  --zip-file "$AWS_LAMBDA_ZIP_FILE" \
  --runtime "$AWS_LAMBDA_RUNTIME" \
  --handler "$AWS_LAMBDA_HANDLER" \
  --role "$AWS_LAMBDA_ROLE"
