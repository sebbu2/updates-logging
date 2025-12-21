#!/usr/bin/env bash
DIR=`dirname -- "$( readlink -f -- "$0"; )"`
DATA=${DIR}/data
(uname -a && cat /proc/version) &> ${DATA}/zz-1-msys2.txt
pacman -Qe &> ${DATA}/zz-1a-msys2-pacman-qe.txt
pacman -Qd &> ${DATA}/zz-1b-msys2-pacman-qd.txt
pacman -Q &> ${DATA}/zz-1c-msys2-pacman-q.txt
gem list -l -a &> ${DATA}/zz-1d-gem-list.txt
dos2unix -q -f ${DATA}/zz-1*
( cd "${DATA}" && git add zz-1* )

