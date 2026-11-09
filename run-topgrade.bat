@echo off
set DIR2="%~dp0"
cd /d %userprofile%
cargo install-update topgrade
topgrade.exe --notify-end on_failure --disable system --disable wsl_update --disable containers --disable vcpkg
%DIR2%\cleanup.bat

