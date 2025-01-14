#!/bin/bash

var=0
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

for mv in $(ls)
do
    # добавил проверку на файл, чтобы не учитывать каталоги
    if [[ -f $mv ]]
    then
        let var++
        echo $mv
    fi
done
echo "Total files in $SCRIPT_DIR: $var"
