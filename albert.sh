#!/bin/bash

##Description: Checking the existance of a user account
##Author: Albert
##Date: 12/24/2019

grep username /etc/passwd
echo -e "\n What is the username \n"
read username
id $username
#sleep 3

if 

	[ $? -eq 0 ]

then

	echo -e "\n User provided exist already \n"

else

	echo -e "\n User does not exist on this system... do you want to create it ? \n"
	read answer
	if 

		[ $answer == yes ]
	
	then
	
		echo -e "\n Let us create the user $username \n"
		useradd $username
		sleep 3
		echo -e "\n the username $username has been created \n"
		sleep 3
		
	else
		
		echo -e "\n Thank you for stopping by \n"
		sleep 3

	fi

fi


