#!/bin/bash

adduser mysql 2>/dev/null

ipaddr=`ip route get 202.106.0.20|grep "202.106.0.20"|awk '{print $7}'`
sed -i "s/^address.*$/address = ${ipaddr}/" rsyncd.conf
