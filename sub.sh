#!/bin/bash

# Prompt the user for input
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Check if both inputs are numbers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Both inputs must be integers."
    exit 1
fi

# Perform the subtraction
difference=$((num1 - num2))

# Display the result
echo "The difference between $num1 and $num2 is $difference."
