#!/bin/bash
rm -rf .terraform
terraform init -backend-config=
terraform apply -auto-approve
