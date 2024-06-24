#!/bin/bash

# script.sh

param1=$1
param2=$2

# Perform some operations
result=$((param1 + param2))

# Print the result (this will be captured by GitHub Actions)
echo $result
