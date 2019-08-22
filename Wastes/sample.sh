#!/bin/bash
echo "Start.."
read -p "Enter URL: " URL # > errorsh.
#echo "${URL}"

#nullOrNot '${URL}'

#if [[ ${?} -eq 0 ]]
#then
#	read -p "Enter URL: " URL
#	echo "Working"
#	#git push -u origin master
#	exit 0
#fi

#nullOrNot(){
#	local url=${0}
	# if [[ ${URL} == "" ]]
	# then
	# 	echo "Null Value..!!" | error.sh 
	# 	exit 1
	# fi
#}
echo "${URL}"
