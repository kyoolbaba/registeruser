#! /bin/bash -x
shopt -s extglob
echo "Enter the FirstName"
read word
pat='^[A-Z][a-z]{2,}$'
if [[ $word =~ $pat ]]; then
echo "PASS"
else 
echo "FAIL"
fi
echo "Enter the LastName"
read word
pat='^[A-Z][a-z]{2,}$'
if [[ $word =~ $pat ]]; then
echo "PASS"
else 
echo "FAIL"
fi