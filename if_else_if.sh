#!/usr/bin/bash
read -p "enter the num:" n

if [ "$n" -eq "0" ]
then 
   printf "the given number is zero\n"
elif [ "$n" -gt "0" ]
then 
   printf "the given number is greater than zero\n"
elif  [ "$n" -lt "0" ]
then   
   printf "the given number n -ve num\n"
else 
   printf "the num not in the range\n"
fi
