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


function getWorkHours() {
	case $1 in 
		1) workHours=4;;
		2) workHours=8;;
		*) workHours=0;;
	esac
	echo $workHours;
}


#calculation for daily wage
if [ $value == 1 ] 
then
	resWorkDonePerDay=$( getWorkHours $((RANDOM%3)) );

	dailyWage=$((EMPLOYEE_PER_HOUR_WAGE * $resWorkDonePerDay)); 
	echo "Daily Wage For an Employee is :"$dailyWage;

else 

	echo "Empwage cannot be calculated for absent employee";
fi;
