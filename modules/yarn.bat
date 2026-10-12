@echo off
cmd /c yarn --version > %DATA%\yarn.txt
cmd /c yarn plugin list > %DATA%\yarn-plugins.txt
cmd /c yarn plugin runtime > %DATA%\yarn-plugins-runtimes.txt
