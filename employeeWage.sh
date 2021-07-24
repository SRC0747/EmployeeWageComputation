#!/bin/bash -x
echo "Welcome to Employee Wage Computation problem."
isPartTime=1
isFullTime=2
randomCheck=$((RANDOM%3))
empWagePerHr=20
numWorkingDays=20
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
	wage=$(($empWagePerHr*$empHrs))
done
