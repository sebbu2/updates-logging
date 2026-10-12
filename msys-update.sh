#!/usr/bin/env bash
DIR=`dirname -- "$( readlink -f -- "$0"; )"`
DATA=${DIR}/data
(uname -a && cat /proc/version) &> ${DATA}/msys2.txt
pacman -Qe &> ${DATA}/msys2-pacman-qe.txt
pacman -Qd &> ${DATA}/msys2-pacman-qd.txt
pacman -Q &> ${DATA}/msys2-pacman-q.txt
gem list -l -a &> ${DATA}/msys2-gem-list.txt
