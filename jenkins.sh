 sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

  yum install epel-release # repository that provides 'daemonize'
  yum install java-11-openjdk-devel
  yum install jenkins
  pub   rsa4096 2020-03-30 [SC] [expires: 2023-03-30]
        62A9756BFD780C377CF24BA8FCEF32E745F2C3D5
  uid                      Jenkins Project
  sub   rsa4096 2020-03-30 [E] [expires: 2023-03-30]
    systemctl enable jenkins
    systemctl start jenkins