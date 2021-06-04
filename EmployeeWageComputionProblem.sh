#!/bin/bash
echo "Employee Wage Computation Program Push On Master"


isPresent=1
randomNumber=$((RANDOM%2))

if [ $randomNumber -eq 	$isPresent ]
then

	echo "Employee Present"
echo "please enter  0 for full time  employee or enter 1 for Part time employee"
read caseChoce

case "$caseChoce" in
	0) echo "Daily Employee Wage"
		function calculateDailyEmployeeWae(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		read -p "full day hours is :" isFullDayHour "hours"
		calculateEmployeeWage=$(( $isWagePerHour*$isFullDayHour ))
		echo "daily employee wage :" $calculateEmployeeWage "rupees"
		}
		calculateDailyEmployeeWae
		;;
	1)echo "part time Employee wage"
		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		read -p "Part time hour is :" isPartTimeDayHour "hours"
		calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isPartTimeDayHour ))
		echo "Part time employee wage :" $calculatePartTimeEmployeeWage "rupees"
			}
		partTimeEmployeeAndWage
		;;
		*)echo "Please enter 1 or 2"
		;;
esac

else
   echo "Employee Absent"
 fi
