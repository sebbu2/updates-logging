#!/usr/bin/env bash
(uname -a && cat /proc/version ) > /Documents/updates/zz-2-cygwin.txt
cygcheck -c -d > /Documents/updates/zz-2b-cygcheck.txt
gem list -l -a > /Documents/updates/zz-2c-gem-list.txt
( cd /Documents/updates && git add zz-2* )
dos2unix -q -f /Documents/updates/zz-2*

