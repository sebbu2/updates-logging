@echo off
cd /D %USERPROFILE%
cmd /c pnpm --version > %DATA%\pnpm.txt
cmd /c pnpm list > %DATA%\pnpm-l.txt 2>&1
cmd /c pnpm config list --json > %DATA%\1pnpm-config.json
cmd /c pnpm list -g > %DATA%\pnpm-g-l.txt 2>&1
cmd /c pnpm config list -g --json > %DATA%\pnpm-g-config.json
cd /D %PWD%
