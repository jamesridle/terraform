#!/bin/sh

terraform remote config \
    -backend=s3 \
    -backend-config="bucket=terraform.rarmstrong-sanbox.com" \
    -backend-config="key=us-west-2/terraform.tfstate" \
    -backend-config="region=us-west-2" 

terraform get
terraform plan

printf "Looks good y/N (defaults to N)? "
read good

shopt -s nocasematch
if [ "$good" == 'y' ]; then
    terraform apply
    terraform output
fi
