#!/bin/bash

echo "WELCOME TO EMPLOYEE WAGE COMPUTION PROGRAM"; 


value=$((RANDOM%2)); 
echo $value; 

if [ $value == 1 ] 
then
	echo "Employee is Present"; 
else 
	echo "Employee is Absent";
fi
