#!/bin/bash
# Author : Virink <virink@outlook.com>
# Date   : 2019/12/16, 17:12

if [[ -f /flag.sh ]]; then
    source /flag.sh
fi

echo "Running..."
pm2-runtime /home/node/processes.json
