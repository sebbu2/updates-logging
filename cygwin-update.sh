#!/usr/bin/env bash
(uname -a && cat /proc/version ) > /Documents/updates/zz-2-cygwin.txt
cygcheck -c -d > /Documents/updates/zz-2b-cygcheck.txt
gem list -l -a > zz-2c-gem-list.txt

