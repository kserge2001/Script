#!/bin/bash


Ip_list_file=inactives

for ip in `cat inactives` ;

 do 

   ping ${ip} -c4 >/dev/null 2>&1

   if  [ $? -eq 0 ] 
   then
   echo ${ip} >> success_ping.log
   else 
   echo ${ip} >> failed_ping.log 
   fi 

 done 
