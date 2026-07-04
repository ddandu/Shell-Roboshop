#!/bin/bash

AMI_ID="mi-0220d79f3f480ecf5"
SD_ID="sg-02e4e006dfaceac5c"

for instance in $@

do 
 INSTACE_ID=$(aws ec2 run-instances --image-id ami-0220d79f3f480ecf5 --instance-type t3.micro --security-group-ids sg-02e4e006dfaceac5c --tag-specifications "ResourceType=instance,Tags=[{Key=Environment,Value=$Instance}]" --query 'Instances[0].InstanceId' --output text)

done