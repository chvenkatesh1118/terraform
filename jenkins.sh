#!/bin/bash
 wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
 rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

  yum install epel-release >> /dev/log1
   if [&1 -eq 0] then 
    echo epel instald
   else
    echo epel not installed  
  yum install java-11-openjdk-devel -y  >> /dev/log1
   if [&1 -eq 0] then 
    echo java instald
   else
    echo java not installed

  yum install jenkins -y >> /dev/log1
   if [&1 -eq 0] then 
    echo jenkins instald
   else
    echo jenkins not installed

  systemctl enable jenkins
   if [&1 -eq 0] then 
    echo jenkins enabled
   else
    echo jenkins enabled not
  systemctl start jenkins
   if [&1 -eq 0] then 
    echo jenkins started
   else
    echo jenkins started not
  cd /var/log/jenkins
  cat jenkins.log