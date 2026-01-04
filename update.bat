@echo off
set OLDDIR=%CD%
cd /d "%~dp0"
set PWD=%CD%
set DATA=%CD%\data
echo 01 topgrade
topgrade --version > %DATA%\01-topgrade.txt
echo 02 wsl
wsl --version > %DATA%\02-wsl.txt
type %DATA%\02-wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\02-wsl.txt
wsl -l -v > %DATA%\02b-wsl.txt
type %DATA%\02b-wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\02b-wsl.txt
echo 03 choco
choco --version > %DATA%\03-choco.txt
choco list > %DATA%\03b-choco.txt
echo 04 scoop
call scoop --version > %DATA%\04-scoop.txt
call scoop bucket list > %DATA%\04a-scoop-bucket.txt
call scoop list > %DATA%\04b-scoop.txt
echo 05 winget
winget --version > %DATA%\05-winget.txt
winget list > %DATA%\05b-winget.txt
powershell "Get-WinGetPackage | Format-Table -AutoSize | Out-File -Width 500 -FilePath %DATA%\05c-winget_packages_$env:COMPUTERNAME.txt"
echo 06 windows (system)
ver > %DATA%\06-windows.txt
gsudo call powershell.exe -NoProfile "Get-WindowsUpdate -IsInstalled | Format-Table -AutoSize -Wrap" > %DATA%\06b-windows-update.txt
echo 07 microsoft store
gsudo call powershell.exe -NoProfile "Get-AppxPackage -AllUsers | Select -Property Name | Sort -Property Name" > %DATA%\07-microsoft-store.txt
echo 08 fossil
fossil version > %DATA%\08-fossil.txt
fossil all list > %DATA%\08b-fossil.txt
echo 09 rust
rustup --version > %DATA%\09-rustup.txt 2>&1
rustup toolchain list > %DATA%\09b-rustup.txt
rustup component list --installed >> %DATA%\09b-rustup.txt
echo 10 dotnet
dotnet --info > %DATA%\10-dotnet.txt
dotnet-tools-outdated --outPkgRegardlessState -f json > %DATA%\10b-dotnet.txt
echo 11 cargo
cargo --version > %DATA%\11-cargo.txt
cargo install --list > %DATA%\11b-cargo.txt
echo 12 go
go version > %DATA%\12-go.txt
go-global-update --dry-run > %DATA%\12b-go.txt
echo 13 vcpkg
@where vcpkg >NUL 2>&1
if %ERRORLEVEL%==0 (
	vcpkg --version > %DATA%\13-vcpkg.txt
	vcpkg list --x-full-desc > %DATA%\13b-vcpkg.txt
)
echo 14 pipx
pipx --version > %DATA%\14-pipx.txt 2>&1
pipx list --include-injected -v > %DATA%\14b-pipx.txt 2>&1
echo 15 conda
call conda --version > %DATA%\15-conda.txt
call conda info > %DATA%\15a-conda.txt
call conda list -n base > %DATA%\15b-conda.txt
echo 16 pip3
C:\dev\Python38\python.exe -m pip --version | dos2unix -q > %DATA%\16a-pipv.txt
C:\dev\Python38\python.exe -m pip list --user pip > %DATA%\16a-pip-lu.txt
C:\dev\Python38\python.exe -m pip list > %DATA%\16a-pip-l.txt
C:\Users\sebbu\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\python.exe -m pip --version | dos2unix -q > %DATA%\16b-pipv.txt
C:\Users\sebbu\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\python.exe -m pip list --user pip > %DATA%\16b-pip-lu.txt
C:\Users\sebbu\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\python.exe -m pip list > %DATA%\16b-pip-l.txt
echo 17 npm
cd /D %USERPROFILE%
call npm --version > %DATA%\17-npm.txt
call npm list > %DATA%\17a-npm.txt
call npm list -g > %DATA%\17b-npm.txt
cd /D %PWD%
echo 18 pnpm
cd /D %USERPROFILE%
call pnpm --version > %DATA%\18-pnpm.txt
call pnpm list > %DATA%\18a-pnpm.txt 2>&1
call pnpm list -g > %DATA%\18b-pnpm.txt 2>&1
cd /D %PWD%
echo 19 github cli ext
gh --version > %DATA%\19-gh.txt
gh extensions list > %DATA%\19b-gh.txt
echo 20 uv
uv --version > %DATA%\20-uv.txt
uv python list > %DATA%\20a-uv.txt
uv tool list > %DATA%\20b-uv.txt 2>&1
uv pip list > %DATA%\20c-uv.txt 2>&1
echo 21 powershell modules
powershell $PSVersionTable > %DATA%\21-powershell.txt
powershell Get-Module > %DATA%\21a-powershell.txt
pwsh -command $PSVersionTable > %DATA%\21b-pwsh.txt
pwsh -command Get-Module > %DATA%\21c-pwsh.txt
echo done
cd %DATA%
dos2unix -q -f 0* 1* 2*
git add --ignore-errors 0* 1* 2*
cd /D %OLDDIR%

