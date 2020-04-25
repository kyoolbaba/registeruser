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
echo "Enter EmailId"
read word
pat='^[a-zA-Z0-9]+([.-_+])?[a-zA-Z0-9]*@[a-zA-Z]+.[a-z]{2,4}(.[a-z]{2})?$'
if [[ $word =~ $pat ]]; then
echo "PASS"
else 
echo "FAIL"
fi
echo "Enter Mobile Number"
read word
pat='^((\+)?91|0)?[6-9][0-9]{9}$'
if [[ $word =~ $pat ]]; then
echo "PASS"
else 
echo "FAIL"
fi
echo "Enter the Password"
read word
pat='[A-Z]+'
if [[ $word =~ $pat && ${#word} -gt '7' ]]; then
echo "PASS"
else 
echo "FAIL"
fi