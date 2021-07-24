#!/bin/bash -x
echo "Welcome to Employee Wage Computation problem."
isCheck=1
randomCheck=$((RANDOM%2))
if [ $isCheck  -eq  $randomCheck ]
then
	echo "Employee is Present."
else
	echo "Employee is absent."
fi
