#!/bin/bash

# usage -> ./OrthographicCheck /res/sections/

function checkfile () {

    if [ -z $1 ]
    then
	exit 1
    fi

    aspell --mode=tex --lang=en --master=en --run-together --clean-words check $1 
   
}

set -e
echo "Checking tex files in $1"
for i in $1/*.tex
do
    checkfile $i
    echo "File $i done"
done
