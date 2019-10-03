#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="TestString"
referenceString="password"
k=3
#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."

#task 1
#read -p "What is the password?" passwordGuess
#echo $passwordGuess

#task 2
while [ $k -ne 0 ]
do
read -p "What is the password?" passwordGuess
if [ "$passwordGuess" == "$referenceString" ]; then
 echo "Your guess is correct"
break
else
  echo "Your guess is not correct"
  k=$(( $k - 1 ))
fi
done
