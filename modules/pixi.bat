@echo off
cd /D %USERPROFILE%\pixi
pixi --version > %DATA%\pixi.txt
pixi list > %DATA%\pixi-l.txt 2>&1
pixi global list > %DATA%\pixi-g-l.txt
cd /D %PWD%
