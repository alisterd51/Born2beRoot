#!/bin/bash

function print_all()
{
	/bin/wall $@
}

#print_all "bonjour" "tout le monde!"
uname -a
lscpu
free -m
df -h
top -bn1
who -b

netstat -a
who --count
hostname -I
cat /var/log/sudo.log | wc -l
