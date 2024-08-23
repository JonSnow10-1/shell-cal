#!/bin/bash

# Get the numbers from the user
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Check if both inputs are numbers
if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Error: Both inputs must be numbers."
  exit 1
fi

# Check if the second number is zero
if [ "$num2" = "0" ]; then
  echo "Error: Division by zero is not allowed."
  exit 1
fi

# Perform the division using bc for floating-point precision
result=$(echo "scale=5; $num1/$num2" | bc)

# Display the result
echo "The result of $num1 divided by $num2 is: $result"
