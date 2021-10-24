#!/bin/bash -x

isPresent=1;
randonCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
      empRatePerHrs=20;
       empHrs=8;
       	Salary=$(($empHrs*$empRatePerHrs));
else
       Salary=0;
fi  
