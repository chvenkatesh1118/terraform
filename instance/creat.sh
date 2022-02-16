#!/bin/bash
rm -rf .terraform
terraform init
terraform apply -auto-approve
