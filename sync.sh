#!/bin/bash

msg=$1
project_path=$(cd `dirname $0`; pwd)
project_name="${project_path##*/}"

if [ -n "$msg" ]; then
    git add -A
    git commit -m "${msg}"
    echo "[$project_name] commit done."

    git pull --all
    echo "[$project_name] pull done."

    git push --all
    echo "[$project_name] push done."
else
    echo "[$project_name] has error: no commit msg."
    echo ""
fi


