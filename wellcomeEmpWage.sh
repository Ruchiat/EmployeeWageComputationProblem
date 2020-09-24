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

declare -i workDonePerDay

EMPLOYEE_PER_HOUR_WAGE=20; 
FULL_DAY_HOUR=8;

MAX_WORKING_DAYS=20;
MAX_WORKING_HOURS=100;

totalWorkingHrs=0;
workingDays=1;

function getWorkHours() {
	case $1 in 
		1) workHours=4;;
		2) workHours=8;;
		*) workHours=0;;
	esac
	echo $workHours;
}


#calculation for daily wage

while [[ $totalWorkingHrs -lt $MAX_WORKING_HOURS && $workingDays -lt $MAX_WORKING_DAYS ]]
do
	
	resWorkDonePerDay=$( getWorkHours $((RANDOM%3)) );
	#keep calculating the wage
	wage=$((resWorkDonePerDay * EMPLOYEE_PER_HOUR_WAGE));
	finalWage=$((finalWage + wage));
	totalWorkingHrs=$((totalWorkingHrs + resWorkDonePerDay));
	workingDays=$((workingDays + 1));
	workDonePerDay[$workingDays]=$finalWage;

done

echo "Total Salary for the employee is :"$finalWage;


