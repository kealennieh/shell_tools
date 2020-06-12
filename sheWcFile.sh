# !/bin/bash


usage() { echo "Usage: $0 [-f file]" 1>&2; exit 1; }

idx= 

while [ "$1" != "" ]; do
    case $1 in 
        -f)    shift
	       file=$1
	       ;;
	    -h | --help) usage
		   ;;
         *)     usage
		;;
    esac
    shift
done

if [ -z "${file}" ]; then
    usage
fi

cat $file | wc
