#!/bin/sh  

checkPython()
{
    #推荐版本V2.6.5
    V1=3
    V2=6
    V3=0

    echo need python version is : $V1.$V2.$V3
    
    #获取本机python版本号。这里2>&1是必须的，python -V这个是标准错误输出的，需要转换
    U_V1=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $1}'`
    U_V2=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $2}'`
    U_V3=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $3}'`
    
    echo your python version is : $U_V1.$U_V2.$U_V3

    Target=2 
    if [ $U_V1 -eq $Target ];then 
        python -m SimpleHTTPServer
    fi 
    
    if [ $U_V1 -lt $V1 ];then
        echo 'Your python version is not OK!(1)'
        exit 1
    elif [ $U_V1 -eq $V1 ];then     
        if [ $U_V2 -lt $V2 ];then 
            echo 'Your python version is not OK!(2)'
            exit 1
        elif [ $U_V2 -eq $V2 ];then
            if [ $U_V3 -lt $V3 ];then 
                echo 'Your python version is not OK!(3)'
                exit 1
            fi
        fi    
    fi

    echo Your python version is OK!
}
# checkPython

buildSimpleServer()
{
    U_V1=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $1}'`
    U_V2=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $2}'`
    U_V3=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $3}'`
    
    echo your python version is : $U_V1.$U_V2.$U_V3
    echo your ip address is :  
    /sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"
    
    if [ $U_V1 -eq 2 ];then
        python -m SimpleHTTPServer
    elif [ $U_V1 -eq 3 ];then 
        python3 -m http.server
    fi
}
buildSimpleServer 
