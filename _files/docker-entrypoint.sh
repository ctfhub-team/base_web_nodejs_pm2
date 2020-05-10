#!/bin/sh
# Author : Virink <virink@outlook.com>
# Date   : 2019/12/16, 17:12

echo "Running..."
pm2 start /home/node/processes.json

tail -F ../logs/*.log