@echo off
set OLDDIR=%CD%
cd /d "%~dp0"
set PWD=%CD%
set DATA=%CD%\data
echo 1 topgrade
topgrade --version > %DATA%\1-topgrade.txt
echo 2 wsl
wsl --version > %DATA%\2-wsl.txt
type %DATA%\2-wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\2-wsl.txt
wsl -l -v > %DATA%\2b-wsl.txt
type %DATA%\2b-wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\2b-wsl.txt
echo 3 choco
choco --version > %DATA%\3-choco.txt
choco list > %DATA%\3b-choco.txt
echo 4 scoop
call scoop --version > %DATA%\4-scoop.txt
call scoop list > %DATA%\4b-scoop.txt
echo 5 winget
winget --version > %DATA%\5-winget.txt
winget list > %DATA%\5b-winget.txt
powershell "Get-WinGetPackage | Format-Table -AutoSize | Out-File -Width 500 -FilePath %DATA%\5c-winget_packages_$env:COMPUTERNAME.txt"
echo 6 windows (system)
ver > %DATA%\6-windows.txt
call powershell.exe -NoProfile "Get-WindowsUpdate -IsInstalled | Format-Table -AutoSize -Wrap" > %DATA%\6b-windows-update.txt
echo 7 microsoft store
call powershell.exe -NoProfile "Get-AppxPackage -AllUsers | Select -Property Name | Sort -Property Name" > %DATA%\7-microsoft-store.txt
echo 8 fossil
fossil version > %DATA%\8-fossil.txt
fossil all list > %DATA%\8b-fossil.txt
echo 9 rust
rustup --version > %DATA%\9-rustup.txt 2>&1
rustup toolchain list > %DATA%\9b-rustup.txt
rustup component list --installed >> %DATA%\9b-rustup.txt
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
vcpkg --version > %DATA%\13-vcpkg.txt
vcpkg list --x-full-desc > %DATA%\13b-vcpkg.txt
echo 14 pipx
pipx --version > %DATA%\14-pipx.txt 2>&1
pipx list --include-injected -v > %DATA%\14b-pipx.txt 2>&1
echo 15 conda
call conda --version > %DATA%\15-conda.txt
call conda info > %DATA%\15a-conda.txt
call conda list -n base > %DATA%\15b-conda.txt
echo 16 pip3
C:\dev\Python38\python.exe -m pip --version > %DATA%\16-pip.txt
C:\dev\Python38\python.exe -m pip list --user pip > %DATA%\16a-pip.txt
C:\dev\Python38\python.exe -m pip list > %DATA%\16b-pip.txt
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
dos2unix -q -f 1* 2* 3* 4* 5* 6* 7* 8* 9*
git add --ignore-errors 1* 2* 3* 4* 5* 6* 7* 8* 9*
cd /D %OLDDIR%

