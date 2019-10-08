#!/usr/bin/env bash

#编辑 　crontab -e
#list  crontab -l
#显示参数  crontab -i

05 05 * * * /home/yitops/yit_etl/KettleJobs/kettle_execute.sh

#23 11 * * * /home/yitops/yit_etl/KettleJobs/kettle_execute.sh

#10 14 * * * /home/yitops/yit_etl/KettleJobs/kettle_execute.sh

cd /home/yitops/yit_etl/yit_py3/logs

#每隔10分钟执行一次
*/10 * * * * tesh.sh