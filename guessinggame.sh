#!usr/bin/env bash

function prompt_guess {
	local guess
	echo "Guess how many files are in the current directory: " >&2
	read guess
	echo $guess
}

correct_num_files=$(ls -l | egrep "^-" | wc -l) #egrep makes sure only file count considered

user_guess=-1

while [[ $user_guess -ne $correct_num_files ]]
do
	user_guess=$(prompt_guess)

	if [[ $user_guess -gt $correct_num_files ]]
	then
		echo "You guessed too high! Try again."
	elif [[ $user_guess -lt $correct_num_files ]]
	then
		echo "You guessed too low! Try again."
	fi
done

echo "Congratulations; you guessed correctly!"

