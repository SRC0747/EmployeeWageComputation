#!/bin/bash -x
echo "Welcome to Employee Wage Computation problem."
isPartTime=1
isFullTime=2
#randomCheck=$((RANDOM%3))
empWagePerHr=20
numWorkingDays=20
max_hr_in_month=4
totalEmpHr=0
totalWorkingDay=0
function getWage(){
for (( day=1; day<=$numWorkingDays; day++ ))
do
	case $empCheck in
		$isFullTime)	echo "Employee is Full-time Present."
				empHrs=8
				;;
		$isPartTime)	echo "Employee is Part time present."
				empHrs=4
				;;
		*)		echo "Empployee is Absent."
				empHrs=0
				;;
	esac
done
}

while [[ ($totalEmpHr -lt $max_hr_in_month) && ($totalWorkingDay -lt $max_hr_in_month) ]]
do
	((totalWorkingDay++))
	workhrs=$(getWage $((RANDOM%3)))
	totalEmpHr=$(($totalEmpHr+$workhrs))
done
total_wage=$(($totalEmpHr+$empWagePerHr))
