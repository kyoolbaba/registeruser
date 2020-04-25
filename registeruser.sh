#! /bin/bash -x
shopt -s extglob
pattern=( '^[A-Z][a-z]{2,}$' '^[A-Z][a-z]{2,}$' 
        '^[a-zA-Z0-9]+([.-_+])?[a-zA-Z0-9.-_=+]*@[a-zA-Z]+.[a-z]{2,4}(.[a-z]{2})?$' 
        '^((\+)?91|0)?[6-9][0-9]{9}$' )
input=("Enter FirstName" "Enter LastName" "Enter EmailId" "Enter PhoneNumber" )

nameEmailPhoneNumber(){
for f in ${!pattern[@]}; do
    echo ${input[f]}
    read word
    pat=${pattern[f]}
    if [[ $word =~ $pat ]]; then
        echo "PASS"
    else 
    echo "FAIL"
    fi
done
}
password(){
    echo "Enter the Password"
    read word
    pat1='[A-Z]+'
    pat2='[0-9]+'
    pat3='[^a-zA-Z0-9]+'
    if [[ $word =~ $pat1 && ${#word} -gt '7' && $word =~ $pat2 && $word =~ $pat3 ]]; then
        echo "PASS"
    else 
        echo "FAIL"
    fi
}
nameEmailPhoneNumber
password