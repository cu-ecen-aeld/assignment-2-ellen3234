#! /bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
	echo "Not enough parameters specified!"
	exit 1
fi

path=$( echo ${writefile%/*} )

mkdir -p ${path}
echo ${writestr} > ${writefile} 2> /dev/null 

if [ $? -ne 0 ]
then 
	echo "${writefile} file could not be created."
        exit 1
fi

