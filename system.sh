#!/bin/bash



#Desc
#Aut
#Date 

usage()
{
echo "Invalid option Please enter an interger from 1 2 3 4 5 6 7 8"
echo    "  * 1 ==> Ip Address            * "
echo    "  * 2 ==> Hostname              * "
echo    "  * 3 ==> Dns                   * "
echo    "  * 4 ==> Default Gateway       * "
echo    "  * 5 ==> Default run level     * "
echo    "  * 6 ==> default kernel        * "
echo    "  * 7 ==> iptables (commin soon)* "
echo -e "  * 8 ==> System inventory      *\n "
read ans
}


 
choice()
{
echo -e "\n  * Please enter your choise  *\n"
echo    "  * 1 ==> Ip Address            * "
echo    "  * 2 ==> Hostname              * "
echo    "  * 3 ==> Dns                   * "
echo    "  * 4 ==> Default Gateway       * "
echo    "  * 5 ==> Default run level     * "
echo    "  * 6 ==> default kernel        * "
echo    "  * 7 ==> iptables (commin soon)* "
echo -e "  * 8 ==> System inventory      *\n "
read ans
}


choice

while [ $ans != 1 ] && [ -z $ans ] && [ $ans != 2 ] && [ $ans != 3 ] && [ $ans != 4 ] && [ $ans != 5 ] && [ $ans != 6 ] && [ $ans != 7 ] && [ $ans != 8 ] ;
do
usage
done
  

 if  

    [ $ans -eq 1 ] 2>/dev/null 

then

echo "you choose  1 ==> Ip Address "

elif

    [ $ans -eq 2 ] 2>/dev/null


then

echo "you choose   2 ==> Hostname "

elif

    [ $ans -eq 3 ] 2>/dev/null


then

echo "you choose   3 ==> Dns "

elif
  
    [ $ans -eq 4 ] 2>/dev/null


then

echo "you choose   4 ==> Gateway"

fi 


