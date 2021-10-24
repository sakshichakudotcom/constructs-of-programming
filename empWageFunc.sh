#!/bin/bash -x
isPartTime=1;
isFullTime=2;
maxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;


totalEmpHr=0;
totalWorkingDays=0;

function getWorks() {

     local $empCheck=$1

             case $empCheck in 
                     $isPartTime)
                           empHrs=4
                              ;;
                     $isFullTime)
                           empHrs=8
                              ;;
                     *)
                           empHrs=0
                              ;;
             esac
          echo $empHrs
}
              while [[ $totalEmpHrs -lt $maxHrsInMonth &&
                       $totalWorkingDays -lt $numWorkingDays ]]
                 do 
                       ((totalWorkingDays++))
                      empCheck=$((RANDOM%3));
                      empHrs="$( getWorks $empCheck )"
                      totalEmpHrs=$(($totalEmpHrs+$empHrs))
                 done
 
totalSalary=$(($totalEmpHrs*$empRatePerHr));         
              
