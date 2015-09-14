#!/bin/bash
host="$1"
if [ $host == "tx169" ]
then
	echo "connecting to $host"
	rdesktop -u Administrator -p Gan817yang121 www.tx169.com
	exit
fi

if [ $host == "lionsky" ]
then
	echo "connecting to $host"
	ssh root@lionsky.cn
	exit
fi
