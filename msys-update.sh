#!/usr/bin/env bash
(uname -a && cat /proc/version) &> /Documents/updates/zz-1-msys2.txt
pacman -Qe &> /Documents/updates/zz-1a-msys2-pacman-qe.txt
pacman -Qd &> /Documents/updates/zz-1b-msys2-pacman-qd.txt
pacman -Q &> /Documents/updates/zz-1c-msys2-pacman-q.txt

