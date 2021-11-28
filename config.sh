#!/bin/bash
aws configure set aws_access_key_id AKIAQKD7AZXCTY3N2JAD; aws configure set aws_secret_access_key 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
 aws configure set default.region us-east-1

  URL=$(curl https://www.terraform.io/downloads.html  | grep 64-bit | grep linux_amd64.zip | awk -F \" '{print $2}')
  FILE=$(echo $URL | awk -F / '{print $NF}')
  curl -s -L -J -O $URL
  sudo yum install unzip -y
  unzip -o $FILE -d /bin
  if [ $? -eq 0 ]; then
    echo -e "\e[31m SUCCESS\e[0m"
  fi


