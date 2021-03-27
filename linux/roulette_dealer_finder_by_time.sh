#!/bin/bash

d=$1
t=$2

cat "${d}_Dealer_schedule" | grep "${t}" | awk -F'\t' '{print $3}'
