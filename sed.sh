#!/usr/bin/env bash

# https://blog.csdn.net/qq_26442553/article/details/79939453


cd /Users/wangwei/tmp_data
sed -n '2,4p' aaa.txt   #打印aaa.txt文件中的第二行到第四行
#参数说明：    -n（关闭自动输出）,p（表示打印，没有p报错）

sed 's/11111/aaaa/g'  aaa.txt    #将aaa.txt中11111字段替换成aaaa 输出的文件替换，原文件还是原来的
