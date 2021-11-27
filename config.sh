#!/bin/bash
aws configure set aws_access_key_id AKIAQKD7AZXCTY3N2JAD; aws configure set aws_secret_access_key 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
 aws configure set default.region us-east-1

  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt update
  sudo apt install terraform

   sudo yum install -y yum-utils
   sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/$release/hashicorp.repo
   sudo yum update
   sudo yum install terraform

