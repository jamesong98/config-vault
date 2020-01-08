#!/bin/bash
#bash program to GET the PID of process and perform kill -2 Signal

processname=${1?Error:No process name provide}
echo "Getting PID of $processname"
PID=$(pgrep $processname)  
echo "Stopping..."
sudo kill -2 $PID
sleep 2
echo "Sucess!!!"

#Created by james 07012020
