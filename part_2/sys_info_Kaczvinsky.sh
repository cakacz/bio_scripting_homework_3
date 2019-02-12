#!/bin/bash

#script will display time and data, all logged-in users, and the system uptime 
#will then write  these variables to log file in readable format

#define variable to return data and time
time.date=`date | awk '{print $4}'`


#define variable to return logged in users
log.users=`who | cut -d'' -f1`

#define variable for system uptime


