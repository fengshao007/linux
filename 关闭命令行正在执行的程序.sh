#!/usr/bin/env bash
# https://www.cnblogs.com/sinferwu/p/11056636.html
Ctrl + C 终止    是强制中断程序的执行,,进程已经终止。
Ctrl + Z   是将任务中止（暂停的意思）,但是此任务并没有结束,他仍然在进程中他只是维持挂起的状态,用户可以使用fg/bg操作继续前台或后台的任务,fg命令重新启动前台被中断的任务,bg命令把被中断的任务放在后台执行。
Ctrl + S 挂起
Ctrl + Q 解挂
Ctrl + D 退出Shell