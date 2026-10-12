@echo off
cmd /c composer --version > %DATA%\composer.txt 2>&1
cmd /c composer config -g -l > %DATA%\composer-config.txt
cmd /c composer diagnose > %DATA%\composer-diagnose.txt
cmd /c composer global show > %DATA%\composer-l.txt 2>&1
