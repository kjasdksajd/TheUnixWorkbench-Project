#!/usr/bin/env bash
# File: guessinggame.sh

## Diego Castanon Delgado
## March 1st 2020

## This script reads the number of files in the directory
## where this file is placed in and prompts user to guess
## the number. Program loops until the user is correct.

dirsize=$(ls -A -1 | wc -l)
qplay=0

echo "Welcome to The Guessing Game."
echo "How many files are there in the directory?"

function printout {
	if [ $1 -lt $dirsize ]
	then
		echo "Too low. Try again."
	elif [ $1 -gt $dirsize ]
	then	
		echo "Too high. Try again."
	elif [ $1 -eq $dirsize ]
	then
		echo "Congratulations. You are correct!"
	else
		echo "I did not understand your answer. Try again."
	fi
}
while [ $qplay -eq 0 ]
do
	echo "Enter your guess below:"
	read userinput
	printout $userinput
	if [ $userinput -eq $dirsize ]
	then
		let qplay=1
	fi
done
