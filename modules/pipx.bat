@echo off
pipx --version > %DATA%\14-pipx.txt 2>&1
pipx list --include-injected -v > %DATA%\14b-pipx.txt 2>&1
