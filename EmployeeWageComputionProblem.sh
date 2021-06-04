#!/bin/bash
echo "Employee Wage Computation Program Push On Master"


isPresent=1
randomNumber=$((RANDOM%2))

if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
	read -p "please enter 0 or 1:" caseChoice

case "$caseChoice" in
	0) echo "Daily Employee Wage"

		function calculateDailyEmployeeWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "working days :" isDay
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay  *  $isDay ))
		echo "employee wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		calculateDailyEmployeeWage
		;;
	1)echo "part time Employee and wage"

		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "part time working days :" isDay

		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay * $isDay ))
		echo "To calculate employee part time wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		partTimeEmployeeAndWage
		;;
		*)echo "plese enter 1 or 0"
		;;
esac

else
   echo "Employee Absent"
 fi
