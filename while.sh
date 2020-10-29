#!/bin/bash


COUNT=0

Good=1223


echo -e "\n Enter the 4 digit pin \n"

read pin

while (( $COUNT < 4 ))
do

   (( COUNT ++ ))

  if 

  [[ ${pin} -eq $Good ]]

  then

    echo -e "\n Congratulation you got the right pin number\n"

  elif 

   [[ ${pin} -ne $Good ]] 

  then
    echo -e "\n Please try again \n"
  
  elif
  
 
[[ $COUNT -eq 4 ]]
 then
  echo -e "\n Sorry you have try so many times your account is now blocked\n" 
   exit 2

fi
 done




