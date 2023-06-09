#!/bin/bash 
sudo apt update
sudo apt install default-jdk
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -        
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo service jenkins start
sudo service jenkins status
sudo ufw enable



#for aws instance
#sudo systemctl start jenkins
#sudo systemctl status jenkins
