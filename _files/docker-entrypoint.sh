#!/bin/bash
# Author : Virink <virink@outlook.com>
# Date   : 2019/12/16, 17:12

if [[ -f /flag.sh ]]; then
    source /flag.sh
fi

echo "Running..."
pm2 start /home/node/processes.json

tail -F /home/node/logs/*.log