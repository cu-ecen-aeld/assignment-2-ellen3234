#! /bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
	echo "Not enough parameters specified!"
	exit 1
fi

find ${filesdir} > /dev/null 2> /dev/null 

if [ $? -ne 0 ]
then 
	echo "${filesdir} is not a directory on the file system."
        exit 1
fi

numOfMatchingFiles="$(grep -r ${searchstr} -l | wc -l)"
numOfMatchingLines="$(grep -r ${searchstr} | wc -l)"
echo "The number of files are ${numOfMatchingFiles} and the number of matching lines are ${numOfMatchingLines}"
