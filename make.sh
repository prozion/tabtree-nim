#!/bin/bash

# if [ $# -lt 1 ]
# then
#   echo "USAGE: make <sourcefile>"
#   exit 1
# fi

#echo $1 | awk '{split ($0, array, ".")}'

filename=$1

case "$filename" in
  "") nim c -o:test/bin/$filename -r test/tabtree_tests.nim ;;
  *) nim c -o:bin/$filename -r src/$filename.nim ;;
esac
