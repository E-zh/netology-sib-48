#!/bin/bash

var=0
# указываем каталог в котором производим подсчет
for file in /etc/*
do
    # добавил проверку на файл, чтобы не учитывать каталоги
    if [[ -f $file ]]
    then
        let var++
        echo $file
    fi
done
echo "Total files in /etc: $var"
