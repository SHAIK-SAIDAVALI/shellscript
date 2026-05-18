#!/bin/bash

echo " enter the Number : "
read Number

if [ $((Number % 2)) -eq 0 ]; then
    echo "Given Number $Number is Even"
else
    echo "Given Number $Number is Odd"

fi