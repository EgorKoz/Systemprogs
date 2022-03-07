#!/bin/bash

repeatscrypt(){
    echo -e "\nRepeat?(y/n)\n"
    read answer
    if [[ $answer != "y" ]]
        then
        exit $1
        fi
}
echo -e "\nAuthor: Egor Kozlov"
echo -e "\nYou can search for files in the specified directory owned by the specified user"
echo -e "\nCurrent directory is $(pwd)"
while (( 1==1 ))
do
echo -e "\nEnter username\n"
read user
if grep -q $user /etc/passwd
then
    echo -e "\nThe user $user exists"
    echo -e "\nEnter name of directory\n"
    read direct
    count=$(find $direct -maxdepth 1 -type f -user $user 2> /dev/null)
    if [ $? -eq 0 ]
    then
        echo -e "\nNumber of files: $(find $direct -maxdepth 1 -type f -user $user | wc -l)"
        repeatscrypt "0"
    else
        echo -e "\nEnter the correct directory name" >&2
        repeatscrypt "1"
    fi
else
    echo -e "\nThe user $user doesn't exist"
    repeatscrypt "1"
fi
done