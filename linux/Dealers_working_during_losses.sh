#!/bin/bash

# The homework instructions said to use multiple scripts with only small changes.
# Instead, I used one script with for loops which replaces the need
# for many similar scripts with the same awk and grep commands 


days=("0310_Dealer_schedule" "0312_Dealer_schedule" "0315_Dealer_schedule" )
times=("05:00:00 AM" "08:00:00 AM" "02:00:00 PM" "08:00:00 PM" "11:00:00 PM" )

for d in "${days[@]}"
do
  echo "Day: $d"
  for t in "${times[@]}"
  do
    cat $d | awk -F'\t' '{print $1,$3}' | grep "$t"
  done
done

