#!/bin/bash


echo "please check if grub.conf,the default is set to 0? "
sleep 3
  head -10 /etc/grub.conf
sleep 4
echo "the default is already set to 0, nothing to do"


