#!/bin/bash

rsync --daemon  --config=/etc/rsyncd/rsyncd.conf && echo "rsync daemon start ok"
