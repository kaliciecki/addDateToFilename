#!/bin/bash

#Create a script which will take a filename as its first argument and. dds a date before the filename. eg. if our file was named file1.txt it would change it to 2018-03-24_file1.txt.

FILE=$1

addDateToFilename(){
	mv $FILE $(date +%d_%m_%Y)-$FILE

}

if [ -z "$1" ]
	then
	printf "\nPlease specify file name after script.\nClosing.\n\n"
	else
	addDateToFilename	
fi
