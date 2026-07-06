#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo
echo "Results;"

sum=$((num1 + num2))
multiplication=$((num1 * num2))
subtraction=$((num1 - num2))

echo "$num1 + $num2 = $sum"
echo "$num1 - $num2 = $subtraction"
echo "$num1 * $num2 = $multiplication"

if [[ $num2 -eq 0 ]]
then
    echo "Cannot divide by zero"
else
    division=$((num1 / num2))
    echo "$num1 / $num2 = $division"
fi