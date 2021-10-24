

#!/bin/bash -x
#CONSTANTS 
isPartTime=1;
isFullTime=2;
maxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
 
#GLOBAL VARIABLES

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage;

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

                  function getEmpWage() {
               local empHr=$1
         echo $(($empHr*$empRatePerHr))
}                
              while [[ $totalEmpHrs -lt $maxHrsInMonth &&
                       $totalWorkingDays -lt $numWorkingDays ]]
                 do 
                       ((totalWorkingDays++))
                      empCheck=$((RANDOM%3));
                      empHrs="$( getWorks $empCheck )"
                      totalEmpHrs=$(($totalEmpHrs+$empHrs))
                      dailyWage["$totalWorkingDays"]="$( getEmpWage $empHrs )" 
                 done
 
totalSalary=$(($totalEmpHrs*$empRatePerHr))         
 echo ${dailyWage[@]}
 echo ${!dailyWage[@]}


