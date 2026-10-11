@echo off
cd /D %USERPROFILE%
cmd /c pnpm --version > %DATA%\18-pnpm.txt
cmd /c pnpm list > %DATA%\18a-pnpm.txt 2>&1
cmd /c pnpm config list --json > %DATA%\18a-pnpm-config.json
cmd /c pnpm list -g > %DATA%\18b-pnpm.txt 2>&1
cmd /c pnpm config list -g --json > %DATA%\18b-pnpm-config.json
cd /D %PWD%
