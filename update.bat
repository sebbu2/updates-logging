@echo off
set OLDDIR=%CD%
cd /D "%~dp0"
set PWD=%CD%
set DATA=%CD%\data
set MODULES=%CD%\modules

setlocal enabledelayedexpansion
set argC=0
for %%x in (%*) do Set /A argC+=1
if %argC% == 1 (cmd /c %MODULES%\%1.bat && exit /B 0)

echo 01 topgrade
cmd /c %MODULES%\topgrade.bat
echo 02 wsl
cmd /c %MODULES%\wsl.bat
echo 03 choco
cmd /c %MODULES%\choco.bat
echo 04 scoop
cmd /c %MODULES%\scoop.bat
echo 05 winget
cmd /c %MODULES%\winget.bat
echo 06 windows (system)
cmd /c %MODULES%\windows.bat
echo 07 microsoft store
cmd /c %MODULES%\microsoft-store.bat
echo 08 fossil
cmd /c %MODULES%\fossil.bat
echo 09 rust
cmd /c %MODULES%\rust.bat
echo 10 dotnet
cmd /c %MODULES%\dotnet.bat
echo 11 cargo
cmd /c %MODULES%\cargo.bat
echo 12 go
cmd /c %MODULES%\go.bat
echo 13 vcpkg
cmd /c %MODULES%\vcpkg.bat
echo 14 pipx
cmd /c %MODULES%\pipx.bat
echo 15 conda
cmd /c %MODULES%\conda.bat
echo 16 pip3
cmd /c %MODULES%\pip3.bat
echo 17 npm
cmd /c %MODULES%\npm.bat
echo 18 pnpm
cmd /c %MODULES%\pnpm.bat
echo 19 github cli ext
cmd /c %MODULES%\gh.bat
echo 20 uv
cmd /c %MODULES%\uv.bat
echo 21 powershell modules
cmd /c %MODULES%\powershell.bat
echo done
cd %DATA%
dos2unix -q -f 0* 1* 2*
git add --ignore-errors 0* 1* 2*
cd /D %OLDDIR%
