#!/bin/bash

:<<comment
Here we connecting to remote server via ssh
and execute some commands there
comment

echo "Please enter ip or domain of remote server: "
read SERVER 

echo "Connecting to $SERVER via ssh"

ssh $SERVER <<EOF
echo "Hi, $USER!"
sleep 2
echo "This your home directory"
pwd
sleep 2
echo "I'll go to initial directory"
cd ../../
pwd
sleep 2
echo "Let me see uptime!"
uptime
EOF