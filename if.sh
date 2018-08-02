#!/bin/bash

read -p "Enter the num:" n 
if [ "$n" = "4" ];
then 
   echo "hello"
   sleep 4
   echo "again hello"
else
   printf "num not in the range\n"
fi

