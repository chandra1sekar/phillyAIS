#!/usr/bin/env bash

if test ! -f ~/.aws/config ; then
    sudo pip install awscli

    echo 'Configuring AWS CLI'
    mkdir -p ~/.aws
    cat > ~/.aws/config <<EOF
[default]
aws_access_key_id = $AWS_ID
aws_secret_access_key = $AWS_SECRET
output = text
region = us-east-1
EOF
fi