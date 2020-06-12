#!/bin/bash

usage() { echo "Usage: $0 [-n num -d folder]" 1>&2; exit 1; }

f=
d=

while [ "$1" != "" ]; do
    case $1 in 
        -n)    shift
	       n=$1
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


if [ -z "${n}" ] && [ -z "${d}" ]; then
    usage
fi

ls | tail -n ${n} | xargs -i cp -r {} ${d}

