#!/bin/bash

usage() { echo "Usage: $0 [-f file] or [-d dir]" 1>&2; exit 1; }

f=
d=

while [ "$1" != "" ]; do
    case $1 in 
        -f)    shift
	       f=$1
	       ;;
	-d)    shift
	       d=$1
	       ;;
	-h | --help) usage
		     ;;
         *)     usage
		;;
    esac
    shift
done


if [ -z "${f}" ] && [ -z "${d}" ]; then
    usage
fi

if [ -z "${f}" ]; then
    scp -P 2022 -r ${d} shanie@10.20.3.22:/home/shanie/work
fi

if [ -z "${d}" ]; then
    scp -P 2022 ${f} shanie@10.20.3.22:/home/shanie/work
fi


