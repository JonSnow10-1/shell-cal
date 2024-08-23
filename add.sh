#!/bin/bash

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

# Read the numbers from arguments
num1=$1
num2=$2

# Check if the arguments are valid numbers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Both arguments must be integers."
    exit 1
fi

# Calculate the sum
sum=$((num1 + num2))

# Output the result
echo "The sum of $num1 and $num2 is $sum."
