#!/bin/bash

if [[ $# -eq 2 ]]; then
    if [[ $1 == "crypt" ]]; then
       echo "Encrypting..."
       echo $2 | base64
    elif [[ $1 == "decrypt" ]]; then
       echo "Decrypting..."
       echo $2 | base64 -d
    else
       echo "Ошибка! Режим преобразования должен быть crypt или decrypt"
       exit 1
    fi
else
    echo 'Ошибка! Необходимо указать два параметра! Например "crypt 123"'
    exit 1
fi
