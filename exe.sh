#!/bin/sh
. $HOME/.bash_profile
export  NLS_LANG="SIMPLIFIED CHINESE_CHINA.AL32UTF8"
rm /report/*.csv
sqlplus topicis/TopicisDB2  @/report/REPORT_CONFIG_TYPE_INIT.sql>/report/REPORT_CONFIG_TYPE_INIT.log
sqlplus topicis/TopicisDB2  @/report/org_config.sql>/report/reportupdate.log
sqlplus topicis/TopicisDB2  @/report/callpro.sql>>/report/reportupdate.log
echo  "开始导入数据" >> /report/reportupdate.log
cd /report
sqlldr report/report@10.0.105.10/racicis control=/report/report_snaplist.ctl>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt01.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt02.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt03.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt04.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt05.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt06.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt07.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt08.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt09.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt10.ctl>>/report/report.log
sqlldr report/report@10.0.105.10/racicis control=/report/report_fin_sczt11.ctl>>/report/report.log
