#!/bin/bash

usage() { echo "Usage: $0 [-d dir] [-s string]" 1>&2; exit 1; }

d=
s=

while [ "$1" != "" ]; do
    case $1 in 
        -s)    shift
	       s=$1
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


if [ -z "${s}" ] && [ -z "${d}" ]; then
    usage
fi

find ${d} -type f -name "*" | xargs grep -in "${s}"

