#!/bin/bash

if [[ $# -eq 1 ]]; then
    REGEX="^[0-9]+$"
    if [[ $1 =~ $REGEX ]]; then
        let A=$1+1
        echo $A
    else
        echo "Ошибка! Параметр должен являться целым числом!"
        exit 1
    fi
else
    echo 'Ошибка! Необходимо указать один обязательный параметр! Например test_1.sh 5'
    exit 1
fi
