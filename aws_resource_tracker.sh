#!/bin/env bash

############################################
# Author: Mohamed Mustafa
# Date: 1/6/2024
#
# Version: v1
#
# This script will report aws report usage
############################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list S3 Buckets
echo "list S3 Buckets" >> aws_resource_tracker.txt
aws s3 ls >> aws_resource_tracker.txt

# List EC2 Instances
echo "List EC2 Instances" >> aws_resource_tracker.txt
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId" >> aws_resource_tracker.txt

# List Lambda Functions
echo "List Lambda Functions" >> aws_resource_tracker.txt
aws lambda list-functions >> aws_resource_tracker.txt

# AWS IAM Users
echo "AWS IAM Users" >> aws_resource_tracker.txt
aws iam list-users >> aws_resource_tracker.txt
