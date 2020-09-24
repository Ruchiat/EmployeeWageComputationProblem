#!/bin/bash

echo "WELCOME TO EMPLOYEE WAGE COMPUTION PROGRAM"; 


value=$((RANDOM%2)); 
echo $value; 

if [ $value == 1 ] 
then
	echo "Employee is Present";
else 
	echo "Employee is Absent"; 

fi;

EMPLOYEE_PER_HOUR_WAGE=20; 
FULL_DAY_HOUR=8;

#calculation for daily wage
if [ $value == 1 ] 
then
	dailyWage=$((EMPLOYEE_PER_HOUR_WAGE * FULL_DAY_HOUR)); 
	echo "Daily Wage For an Employee is :"$dailyWage;

else 

	echo "Empwage cannot be calculated for absent employee";
fi;
