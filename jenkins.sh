#!/bin/bash
 wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
 rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

  yum install epel-release
  yum install java-11-openjdk-devel -y
  yum install jenkins -y

  systemctl enable jenkins
  systemctl start jenkins
  cd /var/log/jenkins
  cat jenkins.log