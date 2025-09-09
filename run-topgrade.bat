@echo off
pushd "%~dp0"
topgrade.exe --disable wsl --disable wsl_update --disable vcpkg
call scoop cleanup -k -a
call mv-lnk.bat
popd
