#!/bin/bash  
#把生成的cpu.txt文件通过邮件发送给用户  
 
#提取本服务器的IP地址信息  
IP=`ifconfig ens33 | grep "inet addr" | cut -f 2 -d ":" | cut -f 1 -d " "`  
 
#提取当前日期 
today=`date -d "0 day" +%Y年%m月%d日`  
 
#发送cpu监控结果邮件  
echo "这是$IP服务器$today的cpu监控报告，请下载附件。" | mutt -s "$IP服务器$today的CPU监控报告" -a /scripts/cpu.txt --  me@lihtao.com
