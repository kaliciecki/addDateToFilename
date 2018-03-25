#!/bin/bash

#Create a script which will take a filename as its first argument and create a dated copy of the file. eg. if our file was named file1.txt it would create a copy such as 2018-03-24_file1.txt.

file=$1

addDateToFilename(){
	mv $file $(date +%d_%m_%Y)-$file

}

if [ -z "$1" ]
	then
	printf "\nPlease specify file name after script.\nClosing.\n\n"
	else
	addDateToFilename	
fi
