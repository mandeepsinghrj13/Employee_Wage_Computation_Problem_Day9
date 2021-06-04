#!/bin/bash
echo "Employee Wage Computation Program Push On Master"

isPresent=1
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi

function calculateDailyEmployeeWage(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
	read -p "To full day hours is :" isFullDayHour
	calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
}
calculateDailyEmployeeWage
