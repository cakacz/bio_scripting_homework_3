#!/bin/bash

#script will display time and data, all logged-in users, and the system uptime 
#will then write  these variables to log file in readable format

#define variable to return data and time
datetime=`date | awk '{print $2, $3, $4}'`
echo "$datetime" >> sys_info_log.txt

#define variable to return logged in users
logusers=`who | cut -d' ' -f1`
echo "$logusers" >> sys_info_log.txt

#define variable for system uptime
systime=`uptime`
echo "$systime" >> sys_info_log.txt
