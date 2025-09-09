@echo off
pushd "%~dp0"
cd /d c:\Users\sebbu\scoop\apps\vcpkg\current
rem call git fetch
rem call git diff --shortstat HEAD..ORIG_HEAD
rem call git pull --quiet
call git fp
call git fp
call git fp
popd
del /F /S /Q C:\Users\sebbu\scoop\persist\vcpkg\buildtrees\*
del /F /Q C:\Users\sebbu\scoop\persist\vcpkg\downloads\*.*
