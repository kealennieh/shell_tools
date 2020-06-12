# !/bin/bash

# https://devtalk.nvidia.com/default/topic/958159/cuda-programming-and-performance/11-gb-of-gpu-ram-used-and-no-process-listed-by-nvidia-smi/

usage() { echo "Usage: $0 [-f file -t target]" 1>&2; exit 1; }

idx= 

while [ "$1" != "" ]; do
    case $1 in 
        -f)    shift
	       file=$1
	       ;;
        -t)    shift
	       target=$1
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

if [ -z "${target}" ]; then
    usage
fi

cat ${file} | sort | uniq > $target 

