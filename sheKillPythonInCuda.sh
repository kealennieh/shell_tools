# !/bin/bash

# https://devtalk.nvidia.com/default/topic/958159/cuda-programming-and-performance/11-gb-of-gpu-ram-used-and-no-process-listed-by-nvidia-smi/

usage() { echo "Usage: $0 [-i number]" 1>&2; exit 1; }

idx= 

while [ "$1" != "" ]; do
    case $1 in 
        -i)    shift
	       idx=$1
	       ;;
	    -h | --help) usage
		   ;;
         *)     usage
		;;
    esac
    shift
done

if [ -z "${idx}" ]; then
    usage
fi

nvidia_id="/dev/nvidia"${idx}
echo ${nvidia_id}
for i in $(sudo lsof ${nvidia_id} | grep python  | awk '{print $2}' | sort -u); do kill -9 $i; done

