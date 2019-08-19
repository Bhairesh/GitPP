#!/bin/bash

# Importing Functions from func.sh
source ./func.sh 

# Check the Root previleges
if [[ ${UID} -ne 0 ]]
then
		echo " Run as roos or sudo..!"
		exit 1
fi

# Initializigng the git
git init 2>&1> /dev/null

# Git Clone


# Git Add
println "Git addfiles"
read -p -e "Enter Option(f/all) and Folder_Name : " Optn File_Name
gitAdd ${Optn} ${File_Name}

# Git remove
echo
read -p -e "Want to remove Git files y/n : " result path
gitremove ${result} ${path}

# Git Commit
println "Git Commit"
read -p -e "Message : " msg
read -p -e "Git path / Repository path : " gpath

bool=$(gitcommit ${msg} ${gpath})
echo "$bool"





println "END OF FILE"
# Calling Funcs
#rintln 'Starting'
#error 'error'
#println 'Stopping'