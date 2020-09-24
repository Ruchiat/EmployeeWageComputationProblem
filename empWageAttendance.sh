#!/bin/bash


echo -e "ENTER EMPLOYEE NAME \n 1:KOMAL \n 2:YASH"; 

read -p "ENTER THE VALUE : " value; 
randomValue=$(($RANDOM%2+1)); 

if [ $value == $randomValue ] 
then
	echo "YES PRESENT"; 
else 
	echo "NOT PRESENT";
fi;
