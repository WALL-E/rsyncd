#!/bin/bash

cd `dirname $0`

role=`id -u`
if test $role -ne 0
then
    echo "Initialization which requires root privileges"
    exit 1
fi

(command -v rsync 1> /dev/null || echo "please install rsync";exit 1)

adduser mysql 2>/dev/null

ipaddr=`ip route get 202.106.0.20|grep "202.106.0.20"|awk '{print $7}'`
sed -i "s/^address.*$/address = ${ipaddr}/" rsyncd.conf

chmod 600 rsyncd.secrets
