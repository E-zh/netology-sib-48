#!/bin/bash

if [[ $# -eq 1 ]]; then
    if [[ -e $1 ]]; then
        [[ -d $1 ]] && echo "$1 - directory"
        [[ -f $1 ]] && echo "$1 - file"
    else
        echo "Не существует такого файла/каталога!"
    fi
else
    echo 'Ошибка! Необходимо указать один обязательный параметр! Например test.sh /etc/passwd'
    exit 1
fi
