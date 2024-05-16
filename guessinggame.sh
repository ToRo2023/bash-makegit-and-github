#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame(){
    n_files=$(pwd | ls | wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $n_files ]
        then
            echo "Your guess is less than the number of files"
        elif [ $number -gt $n_files ]
        then
            echo "Your guess is greater than the number of files"
        else
            echo "Congratulation,your guess is correct!"
        break;
        fi
    done
}

echo "Guess how many files are there in current directory?"
guessinggamezz
