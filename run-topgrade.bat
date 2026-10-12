@echo off
set DIR2="%~dp0"
cd /d %userprofile%
topgrade.exe --disable system --disable wsl_update --disable containers --disable vcpkg
cleanup.bat
