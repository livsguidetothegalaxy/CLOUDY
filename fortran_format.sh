#!/bin/bash 

ls /home/oyoung/c17.01/run_cloudy_new/grid2/*con | while read file

do

in=$(echo $file | awk -F '.con' '{print $1}')

#echo $in

#echo " $in.in"
echo "'$in.in','$file',1,1,83" >> run_cloudy_grid2.sh
#echo "'$file',1,164494,1,83,250"
done
