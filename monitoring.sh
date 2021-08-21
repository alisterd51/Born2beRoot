#!/bin/bash

function print_all()
{
	/bin/wall $@
}

ARCH=$(uname -a)
CPU=$(lscpu)

MEM_USE=$(free -m)
DISK_USE=$(df -h)
CPU_USE=$(top -bn1)
LAST_BOOT=$(who -b)

TCP=$(netstat -a)
USER_LOG=$(who --count)
NET=$(hostname -I)
SUDO=$(cat /var/log/sudo.log | wc -l)

wall "$ARCH $CPU $MEM_USE $DISK_USE $CPU_USE $LAST_BOOT $TCP $USER_LOG $NET $SUDO"
