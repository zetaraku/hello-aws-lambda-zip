#!/bin/bash

AWS_IAM_ROLE_NAME='hello-aws-lambda-zip-role'
AWS_IAM_ASSUME_ROLE_POLICY_DOCUMENT='file://Role-Trust-Policy.json'

aws iam create-role \
  --role-name "$AWS_IAM_ROLE_NAME" \
  --assume-role-policy-document "$AWS_IAM_ASSUME_ROLE_POLICY_DOCUMENT"
