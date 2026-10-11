@echo off
winget --version > %DATA%\05-winget.txt
winget list > %DATA%\05b-winget.txt
pwsh -command "Get-WinGetPackage | Format-Table -AutoSize | Out-File -Width 500 -FilePath %DATA%\05c-winget_packages_$env:COMPUTERNAME.txt"
