#!/usr/bin/env bash

# 在当前目录中，查找后缀有 file 字样的文件中包含 test 字符串的文件，并打印出该字符串的行
grep test *file

$ grep test test* #查找前缀有“test”的文件包含“test”字符串的文件

ps -ef | grep mmp-front  //mmp-front是进程关键字
ps -ef | grep redis
kill -9 pid
ps -ef | grep python


查找指定进程个数
ps -ef | grep mmp-front -c  或者
ps -ef | grep -c mmp-front

不显示本身进程
ps -aux | grep mmp-front
ps -aux | grep mmp-front | grep -v "grep"
ps -aux | grep \[m]mp-front

多关键字搜索

grep 'invalid bank' repay.log.2018-12.log | grep '请求代扣' 

查询出符合查询条件的总数

grep 'invalid banko' repay.log.2018-12.log | grep '请求代扣' | wc -l
