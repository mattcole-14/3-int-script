#!/bin/bash

# NAME: Matthew Braziel
# CS 4350 - Unix Systems Programming
# Section Number: 001
# Assignment Number: 2
# Due Date: 9/14/2026


echo "This Script is Implemented by Matthew Braziel"
echo "The function of This script is to :"
echo "1. Display the integer arguments that are entered."
echo "2. Display the smallest of the integer arguments"
echo "3. Display the largest of the integer arguments"
echo "4. Sum of the 3 integer arguments."
echo "5. Product of the 3 integer arguments."
echo "6. Average of the 3 integer arguments."
echo "7. Square of each integer argument."
echo "8. Determine whether each integer argument is positive, negative or zero."
echo "9. Determine whether each integer argument is odd, or even"
echo "10. Find all even numbers between 1 and the first integer argument."
echo "11. Find all odd numbers between 1 and the second integer argument."
echo "12. Find the factorial of the last integer argument."
echo "13. Determine whether the second integer argument is a prime number."

if [ $# -ne 3 ]
then
    echo "**** Error - Must input 3 integer Values"
    echo "End of script"
    echo "Matthew Braziel - 9 - 14 - 2026"
    exit 1
fi
num1=$1
num2=$2
num3=$3

echo
echo "Enter 3 integer Values - - - - > $num1 $num2 $num3"
echo "1) You Entered $num1 $num2 $num3"

#smallest #
smallest=$num1
if [ $num2 -lt $smallest ]
then
    smallest=$num2
fi
if [ $num3 -lt $smallest ]
then
    smallest=$num3
fi
echo "2 ) The Smallest integer is $smallest"

#largest #
largest=$num1
if [ $num2 -gt $largest ]
then
    largest=$num2
fi
if [ $num3 -gt $largest ]
then
    largest=$num3
fi
echo "3 ) The Largest integer is $largest"   

#sum of 3 integers
sum=$((num1 + num2 + num3))
echo "4) $num1 + $num2 + $num3 = $sum"

#product of 3 integers
product=$((num1 * num2 * num3))
echo "5) $num1 * $num2 * $num3 = $product"

#average of 3 integers
average=$((sum / 3))
echo "6) ( $num1 + $num2 + $num3 ) / 3 = $average"

#square of each integer
square1=$((num1 * num1))
square2=$((num2 * num2))
square3=$((num3 * num3))
echo "7) $num1 * $num1 = $square1, $num2 * $num2 = $square2, $num3 * $num3 = $square3"

#positive, negative, or zero
if [ $num1 -gt 0 ]
then
    sign1="positive"
elif [ $num1 -lt 0 ]
then
    sign1="negative"
else
    sign1="zero"
fi
if [ $num2 -gt 0 ]
then
    sign2="positive"
elif [ $num2 -lt 0 ]
then
    sign2="negative"
else
    sign2="zero"
fi
if [ $num3 -gt 0 ]
then
    sign3="positive"
elif [ $num3 -lt 0 ]
then
    sign3="negative"
else
    sign3="zero"
fi
echo "8) $num1 is $sign1, $num2 is $sign2, $num3 is $sign3."

#odd or even
if [ $((num1 % 2)) -eq 0 ]
then
    type1="even"
else
    type1="odd"
fi
if [ $((num2 % 2)) -eq 0 ]
then
    type2="even"
else
    type2="odd"
fi

if [ $((num3 % 2)) -eq 0 ]
then
    type3="even"
else
    type3="odd"
fi
echo "9) $num1 is $type1, $num2 is $type2, $num3 is $type3"

# even numbers 1 through num1 
echo -n "10) All even numbers between 1 and $num1 are : "
if [ $num1 -gt 0 ]
then
    i=1
    while [ $i -le $num1 ]
    do
        if [ $((i % 2)) -eq 0 ]
        then
            echo -n "$i "
        fi
        i=$((i + 1))
    done
else
    i=$num1
    while [ $i -le 1 ]
    do
        if [ $((i % 2)) -eq 0 ]
        then
            echo -n "$i "
        fi
        i=$((i + 1))
    done
fi
echo

# odd numbers 1 through num2
echo -n "11) All odd numbers between 1 and $num2 are: "
if [ $num2 -gt 0 ]
then
    i=1
    while [ $i -le $num2 ]
    do
        if [ $((i % 2)) -ne 0 ]
        then
            echo -n "$i "
        fi
        i=$((i + 1))
    done
else
    i=$num2
    while [ $i -le 1 ]
    do
        if [ $((i % 2)) -ne 0 ]
        then
            echo -n "$i "
        fi
        i=$((i + 1))
    done
fi
echo

#factorial
if [ $num3 -lt 0 ]
then
    echo "12) Error - Cannot calculate factorial of a negative integer"
else
    factorial=1
    i=1
    while [ $i -le $num3 ]
    do
        factorial=$((factorial * i))
        i=$((i + 1))
    done
    echo "12) Factorial of $num3 is : $factorial"
fi

#prime number check
primeNum=$num2
if [ $primeNum -lt 0 ]
then
    primeNum=$((primeNum * -1))
    echo "13) Positive value of $num2 is $primeNum"
fi
isPrime=1

if [ $primeNum -le 1 ]
then
    isPrime=0
else
    i=2

    while [ $i -lt $primeNum ]
    do
        if [ $((primeNum % i)) -eq 0 ]
        then
            isPrime=0
            break
        fi

        i=$((i + 1))
    done
fi
if [ $isPrime -eq 1 ]
then
    echo "13) $primeNum is prime"
else
    echo "13) $primeNum is not prime"
fi
echo


echo "End of script"
echo "Matthew Braziel - 9 - 14 - 2026"