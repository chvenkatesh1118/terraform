#!/bin/bash
 wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
 rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

  yum install epel-release >> /dev/log1
   if   [ &1 -eq 0 ] 
   then 
    echo epel instald
   else
    echo epel not installed 
    if 
  yum install java-11-openjdk-devel -y  >> /dev/log1
   if   [ &1 -eq 0 ] 
   then 
    echo epel instald
   else
    echo epel not installed 
    fi 

  yum install jenkins -y >> /dev/log1
    if   [ &1 -eq 0 ] 
   then 
    echo epel instald
   else
    echo epel not installed 
    fi 

  systemctl enable jenkins
    if   [ &1 -eq 0 ] 
   then 
    echo epel instald
   else
    echo epel not installed 
    fi 
  systemctl start jenkins
   if   [ &1 -eq 0 ] 
   then 
    echo epel instald
   else
    echo epel not installed 
<<<<<<< HEAD
    fi
=======
    fi 
  
>>>>>>> cc16491c90ac75b34f474a4e635a9bc2673722d0
