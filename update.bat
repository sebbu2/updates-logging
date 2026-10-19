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
echo 12 flutter
cmd /c %MODULES%\flutter.bat
echo 13 go
cmd /c %MODULES%\go.bat
echo 14 vcpkg
cmd /c %MODULES%\vcpkg.bat
echo 15 pipx
cmd /c %MODULES%\pipx.bat
echo conda
cmd /c %MODULES%\conda.bat
echo 16 pixi
cmd /c %MODULES%\pixi.bat
echo 17 pip3
cmd /c %MODULES%\pip3.bat
echo 18 tldr
cmd /c %MODULES%\tldr.bat
echo 19 npm
cmd /c %MODULES%\npm.bat
echo 20 yarn
cmd /c %MODULES%\yarn.bat
echo 21 pnpm
cmd /c %MODULES%\pnpm.bat
echo 22 containers
rem cmd /c %MODULES%\containers.bat
cmd /c %MODULES%\docker.bat
echo 23 composer
cmd /c %MODULES%\composer.bat
echo 24 ruby
cmd /c %MODULES%\ruby.bat
echo 25 github cli ext
cmd /c %MODULES%\gh.bat
echo 26 uv
cmd /c %MODULES%\uv.bat
echo 27 powershell modules
cmd /c %MODULES%\powershell.bat
echo 28 typst
cmd /c %MODULES%\typst.bat
rem not in topgrade
echo dart
cmd /c %MODULES%\dart.bat
echo perl
cmd /c %MODULES%\perl.bat
echo done
cd %DATA%
dos2unix -q -f *.txt *.json
git add --ignore-errors *.txt *.json
cd /D %OLDDIR%
