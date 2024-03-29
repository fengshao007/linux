#!/usr/bin/env bash
cp davinci-server_3.01-0.3.1-SNAPSHOT.jar /Users/wangwei/Downloads/ide/davinci-assembly_3.0.1-0.3.1-SNAPSHOT-dist-beta.7/lib

cp
cp /home/mysql-connector-java-5.1.38-bin.jar /sqoop/lib
chmod -R 777 /sqoop/lib/mysql-connector-java-5.1.38-bin.jar

linux下文件的复制、移动与删除命令为：cp，mv，rm
一、文件复制命令cp

命令格式：cp [-adfilprsu] 源文件(source) 目标文件(destination)
cp [option] source1 source2 source3 ... directory
参数说明：
-a:是指archive的意思，也说是指复制所有的目录
-d:若源文件为连接文件(link file)，则复制连接文件属性而非文件本身
-f:强制(force)，若有重复或其它疑问时，不会询问用户，而强制复制
-i:若目标文件(destination)已存在，在覆盖时会先询问是否真的操作
-l:建立硬连接(hard link)的连接文件，而非复制文件本身
-p:与文件的属性一起复制，而非使用默认属性
-r:递归复制，用于目录的复制操作
-s:复制成符号连接文件(symbolic link)，即“快捷方式”文件
-u:若目标文件比源文件旧，更新目标文件


如将/test1目录下的file1复制到/test3目录，并将文件名改为file2,可输入以下命令：
cp /test1/file1 /test3/file2



# 文件夹是mv https://www.cnblogs.com/liaojie970/p/6746230.html
# 如将/test1目录下的file1复制到/test3 目录，并将文件名改为file2,可输入以下命令：
mv /test1/file1 /test3/file2

# 如删除/test目录下的file1文件，可以输入以下命令：
rm -i /test/file1

