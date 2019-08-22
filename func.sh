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

# Git Clone
gitclone(){
echo "Cloning repository-------"

DEST_PATH=${*}

git clone ${DEST_PATH}

#iT=isTrue "Cloned Successfully and Stored in ${*}"

if [[ ${?} -eq 0 ]]
	then
		echo "Cloned Successfully and Stored in ${*}"
	else
		echo "----->>> Clone FAILED <<<-----"

		#exit 1  execute previous command
fi

#read -p "Remote Clone ' r ' or Local Clone ' l ': " Clone
# while getopts r:l: $Clone
# do
# 	case ${Clone} in
# 	r) 
# 		PATH=${OPTARG}
# 		echo "Remote Clone.. ${PATH} " 
# 		;;
# 	l)
# 		PATH=${OPTARG}
# 		echo "Local Clone.. ${PATH} " 
# 		;;
# 	?)
# 		echo "Invalid Option.."
# 		echo "Please Enter 'r' or 'l' for Cloning"
# 		exit 1
# 		;;
# 	esac 
# done

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

# somefunc(){
# 	len=${#}
# 	for args in ${*}
# 	do
# 		#echo "${args}" | head -c1 > a 
# 		echo " ${args}------------"
# 		#len=$(expr $len - 1)
# 	done
# }

isTrue(){
	if [[ ${?} -eq 0 ]]
	then
		echo "-----${*}-----"
	else
		echo "----->>> FAILED <<<-----"
		#exit 1  execute previous command
	fi
}