@echo off
pushd "%~dp0"
cd /d c:\Users\sebbu\scoop\apps\vcpkg\current
rem cmd /c git fetch
rem cmd /c git diff --shortstat HEAD..ORIG_HEAD
rem cmd /c git pull --quiet
cmd /c git fp
cmd /c git fp
cmd /c git fp
popd
del /F /S /Q C:\Users\sebbu\scoop\persist\vcpkg\buildtrees\*
del /F /Q C:\Users\sebbu\scoop\persist\vcpkg\downloads\*.*
