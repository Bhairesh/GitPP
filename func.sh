#!/bin/bash

println(){
	echo
	echo "-------------------${*}--------------------"	
	echo
}

error(){
	echo "---------------------------------"
	echo 
	echo ${*}
	echo 
	echo "---------------------------------"
	echo
}


gitclone(){
echo "Clone repository-------"
read -p "Remote Clone ' r ' or Local Clone ' l ': " Clone

while getopts r:l: $Clone
do
	case ${Clone} in
	r) 
		PATH=${OPTARG}
		echo "Remote Clone.. ${PATH} " 
		;;
	l)
		PATH=${OPTARG}
		echo "Local Clone.. ${PATH} " 
		;;
	?)
		echo "Invalid Option.."
		echo "Please Enter 'r' or 'l' for Cloning"
		exit 1
		;;
	esac 
done

}

gitAdd(){
	if [[ ${#} -eq 0 ]]; then
		echo "Pass Option and/or Directory"
		./gitpp.sh
		exit 1
	fi

	if [[ ${1} == 'all' ]]
	then
		echo "add all"
		# git add *  #aadding all the files  
	elif [[ ${1} == 'f' ]]
	then
		echo "add ${2}"
	elif [[ ${1} == 'n' ]]
	then
		echo "noting"
	fi
}

gitremove(){
	if [[ ${1} == 'y' ]]
	then
		git rm ${2} 
	fi
	return 1
}

gitcommit(){
	if [[ ${#} -eq 0 ]]; then
		echo "Pass Option and/or Directory"
		./gitpp.sh
		exit 1
	fi
	echo "Git commit ${1}:${2}"
	# git commit -m ${1}
	# git push origin master
	# git remote add origin ${2}
	# git pull
}

somefunc(){
	len=${#}
	for args in ${*}
	do
		#echo "${args}" | head -c1 > a 
		echo " ${args}------------"
		#len=$(expr $len - 1)
	done
}