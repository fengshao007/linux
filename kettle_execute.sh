#!/bin/sh
export JAVA_HOME=/usr/java/jdk1.8.0_191-amd64
#export PYTHON_HOME=/home/yitops/anaconda3
day=`date "+%Y-%m-%d"`


#先杀掉现有的Kettle相关进程
kill -KILL `ps aux |grep /home/yitops/kettle/spoon.sh|grep -v grep | awk '{print $2}'`
kill -KILL `ps aux |grep /usr/java/jdk1.8.0_191-amd64/bin/java|grep -v grep | awk '{print $2}'`

#删除Kettle自带的日志
find /home/yitops/kettle/logs -name "pdi*.log" -exec rm -rf {} \;

#Kettle跑批
sh /home/yitops/kettle/kitchen.sh /file /home/yitops/yit_etl/KettleJobs/j_job_etl.kjb -level=error>/home/yitops/yit_etl/KettleJobs/kettle.log
#
if [ $? -ne 0 ]; then
    echo "failed"
else
    echo "succeed"
    rm -rf /home/yitops/yit_etl/yit_py3/logs/${day}.log
    /home/yitops/anaconda3/bin/python /home/yitops/yit_etl/yit_py3/Vopt.py > /home/yitops/yit_etl/yit_py3/logs/${day}.log 2>&1 &
fi
#python /home/yitops/yit_etl/yit_py3/save_log_to_db.py > /dev/null 2>&1


python多线程有个全局解释器锁（global interpreter lock），这个锁的意思是任一时间只能有一个线程使用解释器，跟单cpu跑多个程序一个意思，大家都是轮着用的，这叫“并发”，不是“并行”。
多进程间共享数据，可以使用 multiprocessing.Value 和 multiprocessing.Array