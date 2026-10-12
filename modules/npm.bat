@echo off
cd /D %USERPROFILE%
cmd /c npm --version > %DATA%\npm.txt
cmd /c npm list > %DATA%\npm-l.txt
cmd /c npm config list --json > %DATA%\npm-config.json
cmd /c npm list -g > %DATA%\npm-g.txt
cmd /c npm config list -g --json > %DATA%\npm-g-config.json
cd /D %PWD%
