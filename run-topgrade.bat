@echo off
set DIR2="%~dp0"
cd /d %userprofile%
topgrade.exe --disable system --disable wsl --disable wsl_update --disable containers --disable vcpkg --disable yarn
cmd /c scoop reset diffutils dos2unix gawk grep innounp patch sed vim wget innounp >NUL
cmd /c scoop cleanup -k -a
cmd /c %DIR2%\mv-lnk.bat

