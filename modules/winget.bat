@echo off
winget --version > %DATA%\winget.txt
winget list > %DATA%\winget-l.txt
winget source list > %DATA%\winget-sources.txt
winget pin list > %DATA%\winget-pins.txt
pwsh -command "Get-WinGetPackage | Format-Table -AutoSize | Out-File -Width 500 -FilePath %DATA%\winget_packages_$env:COMPUTERNAME.txt"
