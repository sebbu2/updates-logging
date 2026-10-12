@echo off
@where vcpkg >NUL 2>&1
IF %ERRORLEVEL%==0 (
	vcpkg --version > %DATA%\vcpkg.txt
	vcpkg list --x-full-desc > %DATA%\vcpkg-l.txt
)
