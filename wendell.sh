#!/bin/bash



#Description: This script is designed to run on 100 servers will automate configurations.


#Author: Wendell

#Date: October 13 2019

#Project 8  question 11

TMPDIR=/tmp >> /home/.bashrc

TMP=/var/log >> /home/.bashrc

mkdir /var/log/http_log
echo "creating needed files and updating permissions"

touch /var/log/http_log/erro.log
touch /var/log/http_log/access.log
sleep 2

chmod -R 644 /var/log/http_log

sleep 2

echo ".....creating secondary group named: deploy"

groupadd deploy

echo "The user is now being created and will be added to the secondary group named deploy."

sleep 3

useradd ansible -G deploy

echo " I will now install the following programs if they are not yet installed.  the programs are git, finger, tree."

sleep 2

echo "The files will be downloaded in the background so you may continue use to utilize the terminal."

yum install git -y &&
yum install finger -y &&
yum install tree -y &&


echo "This concludes the process of the script.  Have a great day"
