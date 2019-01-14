#!/usr/bin/env bash

#
# https://jasonmun.blogspot.my
# https://github.com/yomun
# 
# Copyright (C) 2019 Jason Mun
# 
# python3 /usr/share/youdao-dict/youdao-dict-backend.py
# python3 /usr/share/youdao-dict/indicator-youdao.py
# python3 /usr/bin/youdao-dict

# ps -ef | grep youdao-dict | grep -v grep

mem_usage=`ps -eo size,pid,command --sort -size| grep youdao-dict | grep -v grep | awk '{print $1; exit}'`

mem_usage_num=$(($mem_usage))

if [ $mem_usage_num -gt '1000000' ]; then
	echo "kill youdao-dict.."
	ps -ef | grep youdao-dict | grep -v grep | awk '{print $2}' | xargs kill -9
	sleep 5
	youdao-dict
else
	echo $mem_usage_num
fi
