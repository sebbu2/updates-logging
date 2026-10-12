#!/usr/bin/env bash
DIR=`dirname -- "$( readlink -f -- "$0"; )"`
DATA=${DIR}/data
(uname -a && cat /proc/version ) > ${DATA}/cygwin.txt
cygcheck -c -d > ${DATA}/cygwin-cygcheck.txt
gem list -l -a > ${DATA}/cygwin-gem-list.txt
