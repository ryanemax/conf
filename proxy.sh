#!/bin/bash
#for pacman
if [ "pacman" == "$1" ];then
export http_proxy='http://127.0.0.1:8118'
export ftp_proxy='http://127.0.0.1:8118'
echo $http_proxy
echo $ftp_proxy
exit 1
fi

#for gopm
if [ "gopm" == "$1" ];then
gopm config set proxy http://127.0.0.1:8118
exit 1
fi

#for go
if [ "go" == "$1" ];then
alias go="http_proxy=http://127.0.0.1:8118 go"
#for go from git
#git config --global http.proxy http://127.0.0.1:8118
#git config --global https.proxy http://127.0.0.1:8118
#git config --global http.sslverify false
#export GIT_SSL_NO_VERIFY=true

#for go from hg
#export http_proxy=http://127.0.0.1:8118
#export http_proxy=https://127.0.0.1:8118
exit 1
fi

	echo "$1": unknown option
	exit 1
