@echo off
cmd /c scoop --version > %DATA%\04-scoop.txt
cmd /c scoop bucket list > %DATA%\04a-scoop-bucket.txt
cmd /c scoop list > %DATA%\04b-scoop.txt
