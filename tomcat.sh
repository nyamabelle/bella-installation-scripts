#!/bin/bash

sudo apt update 
sudo apt install default-jdk #only if java is not installed
cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz
sudo tar -xvf apache-tomcat-9.0.55.tar.gz
sudo rm apache-tomcat-9.0.55.tar.gz
sudo mv apache-tomcat-9.0.55 tomcat
sudo chmod 777 -R /opt/tomcat
sudo chmod 777 -R /opt/tomcat
sudo chown ubuntu -R /opt/tomcat
sh /opt/tomcat/bin/startup.sh
# create a soft link to start and stop tomcat
sudo ln -s /opt/tomcat/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat

#vi /opt/tomcat/conf/tomcat-users.xml 
#Copy the below and paste in the context.xml file 
# <role rolename="admin-gui" />, <user username="admin" password="admin123" roles="manager-script,manager-gui,manager-admin" />
# change tomcat port top 8009 
#  vi   /opt/tomcat/conf/server.xml
#change line 69 from 8080  to 8009.
#same and quit. 

#configure interner access :      vi /opt/tomcat/webapps/manager/META-INF/context.xml 
