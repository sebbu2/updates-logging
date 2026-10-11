@echo off
@where vcpkg >NUL 2>&1
IF %ERRORLEVEL%==0 (
	vcpkg --version > %DATA%\13-vcpkg.txt
	vcpkg list --x-full-desc > %DATA%\13b-vcpkg.txt
)
