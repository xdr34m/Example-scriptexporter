#!/bin/bash

# Generate a random float between 0 and 1
str_var=$(awk -v seed=$RANDOM 'BEGIN { srand(seed); printf("%.8f\n", rand()) }')

# Format the output string
output="script_output_XX{script=\"randfloat\"} $str_var"

# Print the output
echo $output