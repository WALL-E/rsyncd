#!/bin/bash

pkill -9 rsync
rm -f /var/run/rsyncd.pid 
echo "rsync daemon stop ok"
