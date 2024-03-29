#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF


#ask the user for the two numbers
echo "Please enter your first number: "
read a
echo "Please enter a second number: "
read b

 #demonstrate substraction and multiplication
echo $a subtracted by $b is $((a - b))
echo $a multiplied by $b is $((a * b))

#display first divided by second gives x with a remainder of y
echo $a divided by $b is $((a / b)) with a remainder of $((a % b))

#the first number raised to the power of the second number
echo $a to the power of $b is $((a ^ b)) 
