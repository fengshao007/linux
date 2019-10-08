#!/usr/bin/env bash
1.后台运行pyhon程序并标准输出到文件

2.现在有test.py程序要后台部署，里面有输出内容

3.使用命令：

1 nohup python -u test.py > test.log 2>&1 &
4.说明：

最后的&表示后台运行
2输出错误信息到提示符窗口
1表示输出信息到提示符窗口，1前面的&注意添加，否则还会创建一个名为1的文件
5.最后会把日志文件输出到test.log文件

6.查看日志：

 tail -f test.log  实时显示
 cat test.log 查看全部输出
