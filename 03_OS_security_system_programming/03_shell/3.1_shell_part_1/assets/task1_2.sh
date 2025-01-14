#!/bin/bash

if [[ $# -eq 1 ]]; then
    echo ${1}1
else
    echo 'Ошибка! Необходимо указать один обязательный параметр! Например test_1.sh 5'
    exit 1
fi
