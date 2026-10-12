@echo off
cmd /c scoop --version > %DATA%\scoop.txt
cmd /c scoop bucket list > %DATA%\scoop-bucket.txt
cmd /c scoop list > %DATA%\scoop-l.txt
