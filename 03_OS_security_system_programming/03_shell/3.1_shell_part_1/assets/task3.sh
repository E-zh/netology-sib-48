#!/bin/bash

if [[ $# -eq 1 ]]; then
    if [[ -d $1 ]]
    then
        echo "$1 - directory"
    elif [[ -f $1 ]]
    then
        echo "$1 - file"
    else
        echo "$1 - not exist"
	exit 1
    fi
else
    echo 'Ошибка! Необходимо указать один обязательный параметр! Например test.sh /etc/passwd'
    exit 1
fi
