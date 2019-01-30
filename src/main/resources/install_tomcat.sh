#!/bin/bash -ex

yum -y update
yum -y install java-1.8.0
yum -y remove java-1.7.0-openjdk
yum -y install tomcat8
service tomcat8 start
service tomcat8 status

cp ./start_tomcat_service.sh /root
cp ./stop_tomcat_service.sh /root

