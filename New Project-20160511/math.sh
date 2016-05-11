#!/bin/bash
re='([-+]?[0-9]*\.?[0-9]+\s?[\/\+\-\*])+\s?([-+]?[0-9]*\.?[0-9]+)'
if ! [[ "$1"$2"$3" =~ $re ]] ; then
   echo "error: $1$2$3 is wrong.kthnxbai" >&2; exit 1
else
    echo "You entered: $1 $2 $3"
    if [["$2" =~ +]] ; then
    echo " plus eh?"
    fi
fi

