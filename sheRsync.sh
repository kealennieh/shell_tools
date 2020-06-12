# !/bin/bash

# https://devtalk.nvidia.com/default/topic/958159/cuda-programming-and-performance/11-gb-of-gpu-ram-used-and-no-process-listed-by-nvidia-smi/

usage() { echo "Usage: $0 [-s src -d dst]" 1>&2; exit 1; }

idx= 

while [ "$1" != "" ]; do
    case $1 in 
        -s)    shift
	       src=$1
	       ;;
        -d)    shift
	       dst=$1
	       ;;
	    -h | --help) usage
		   ;;
         *)     usage
		;;
    esac
    shift
done

if [ -z "${src}" ]; then
    usage
fi

if [ -z "${dst}" ]; then
    usage
fi

rsync -a -r ${src} ${dst} --progress

