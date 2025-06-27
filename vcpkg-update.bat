@echo off
vcpkg update
vcpkg upgrade
set VCPKG_MANIFEST_INSTALL=off
set VCPKG_MAX_CONCURRENCY=1
set VCPKG_NO_CI=1
vcpkg update
vcpkg upgrade
pause
vcpkg upgrade --no-dry-run
pause
del /F /S /Q C:\Users\sebbu\scoop\persist\vcpkg\buildtrees\*
del /F /Q C:\Users\sebbu\scoop\persist\vcpkg\downloads\*.*

