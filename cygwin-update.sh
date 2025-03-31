#!/usr/bin/env bash
DIR=`dirname -- "$( readlink -f -- "$0"; )"`
DATA=${DIR}/data
(uname -a && cat /proc/version ) > ${DATA}/zz-2-cygwin.txt
cygcheck -c -d > ${DATA}/zz-2b-cygcheck.txt
gem list -l -a > ${DATA}/zz-2c-gem-list.txt
( cd "${DATA}" && git add zz-2* )
dos2unix -q -f ${DATA}/zz-2*

