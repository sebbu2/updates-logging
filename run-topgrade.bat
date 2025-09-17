@echo off
DIR2="%~dp0"
cd /d %userprofile%
topgrade.exe --disable wsl --disable wsl_update --disable vcpkg
call scoop cleanup -k -a
call %DIR2%\mv-lnk.bat

