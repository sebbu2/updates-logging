@echo off
cd /D %USERPROFILE%
cmd /c npm --version > %DATA%\17-npm.txt
cmd /c npm list > %DATA%\17a-npm.txt
cmd /c npm config list --json > %DATA%\17b-npm-config.json
cmd /c npm list -g > %DATA%\17b-npm.txt
cmd /c npm config list -g --json > %DATA%\17b-npm-config.json
cd /D %PWD%
