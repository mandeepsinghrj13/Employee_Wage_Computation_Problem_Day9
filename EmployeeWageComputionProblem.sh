#!/bin/bash
echo "Employee Wage Computation Program Push On Master"


isPresent=1

randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
	echo "Enter choice: "
	echo "1.Daily Employee"
	echo "2.Part Time Employee"
	read ch
case "$ch" in
	1) echo "To calculate Daily Employee Wage"


		function calculateDailyEmployeeWageWorkHours(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8

		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "working days :" isDay
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay  *  $isDay ))
		echo "To calculate employee wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}

		calculateDailyEmployeeWageWorkHours
		;;
	2)echo "To calculate part time Employee and wage"


		function partTimeEmployeeAndWageWorkHours(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8


		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "TO part time working days :" isDay

		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay * $isDay ))
		echo "To calculate employee part time wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		partTimeEmployeeAndWageWorkHours
		;;
		*)echo "No choice."
		;;
esac

else
   echo "Employee Absent."
 fi
