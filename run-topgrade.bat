@echo off
set DIR2="%~dp0"
cd /d %userprofile%
topgrade.exe --disable system --disable wsl --disable wsl_update --disable vcpkg --disable yarn
call scoop reset diffutils dos2unix gawk grep innounp patch sed vim wget innounp >NUL
call scoop cleanup -k -a
call %DIR2%\mv-lnk.bat

