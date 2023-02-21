#!/bin/bash

AWS_LAMBDA_FUNCTION_NAME='hello-aws-lambda-zip'
AWS_LAMBDA_ZIP_FILE='fileb://dist/index.zip'

aws lambda update-function-code \
  --function-name "$AWS_LAMBDA_FUNCTION_NAME" \
  --zip-file "$AWS_LAMBDA_ZIP_FILE"
