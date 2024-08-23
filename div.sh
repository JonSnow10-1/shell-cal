#!/bin/bash

# Static numbers to divide
num1=10
num2=5

# Check if the second number is zero to avoid division by zero
if [ "$num2" -eq 0 ]; then
  echo "Error: Division by zero is not allowed."
  exit 1
fi

# Perform the division
quotient=$((num1 / num2))

# Display the result
echo "The quotient of $num1 divided by $num2 is: $quotient"
