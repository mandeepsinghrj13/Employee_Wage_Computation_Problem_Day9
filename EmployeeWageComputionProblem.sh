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
