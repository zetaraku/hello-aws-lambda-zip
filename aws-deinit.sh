#!/bin/bash

AWS_LAMBDA_FUNCTION_NAME='hello-aws-lambda-zip'

aws lambda delete-function \
  --function-name "$AWS_LAMBDA_FUNCTION_NAME"

AWS_IAM_ROLE_NAME='hello-aws-lambda-zip-role'

aws iam delete-role \
  --role-name "$AWS_IAM_ROLE_NAME"
