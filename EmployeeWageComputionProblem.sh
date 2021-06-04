#!/bin/bash
echo "Employee Wage Computation Program Push On Master"


isPresent=1
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then

function calculateDailyEmployeeWage(){
        read -p "Assume Wage per hour is :" isWagePerHour "rupees"
        read -p "full day hours is :" isFullDayHour
        calculateEmployeeWage=$(( $isWagePerHour*$isFullDayHour ))
        echo "daily employee wage :" $calculateEmployeeWage "rupees"
}

	echo "Employee Present"
function partTimeEmployeeAndWage(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
	read -p "part time hour is :" isPartTimeDayHour "Hours"
	calculatePartTimeEmployeeWage=$(( $isWagePerHour*$isPartTimeDayHour ))
	echo "Part time employee wage :" $calculatePartTimeEmployeeWage "rupees"
}

calculateDailyEmployeeWage

partTimeEmployeeAndWage
else
   echo "Employee Absent"
 fi
