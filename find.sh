#!/usr/bin/env bash

# https://blog.csdn.net/qq_26442553/article/details/79939238

#  查询大于100M的文件
find . -type f -size +100M -exec du -sh {} \;
#查找/根目录下文件名为a.txt的文件
find / -name a.txt
#查找/home及子目录中文件名为a.txt的文件
find /home -name a.txt
# 查找当前目录及子目录中所有后缀为.tar.gz的文件
find  ./ -name  *.tar.gz
find  /usr/local/Cellar/hadoop/3.1.2/ -name hadoop-client-core.jar

#查询当前目下文件名称，并按特定格式打印出
 find  ./  -type f -printf  "%s\t%p\n"

# 列出系统中最大的10个文件
 find  / -type f -printf "%s\t%p\n"|sort -nr |head -10   #从大到小进行排序，并取前10个文件

# 注意事项：用find查找文件时，find的能够搜索查询的目录只是当前用户的权限目录
# 所以有些非当前用户的目录是检索不到的，如果想查全部目录，则要用root用户登录查找




