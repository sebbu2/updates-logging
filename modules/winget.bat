@echo off
winget --version > %DATA%\winget.txt
winget list > %DATA%\winget-l.txt
pwsh -command "Get-WinGetPackage | Format-Table -AutoSize | Out-File -Width 500 -FilePath %DATA%\winget_packages_$env:COMPUTERNAME.txt"
