#!/bin/bash
LIST1=(0 0 1 1 1 3 2 3 1 4 4 4)
LIST2=()
LIST2=${LIST1[0]}
for i in ${LIST1[@]:1}
do 
    if [[ "${LIST2[@]}" != *"$i"* ]]
    then
        LIST2+=($i)
    fi
done
echo "${LIST2[@]}"