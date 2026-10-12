@echo off
gsudo cmd /c pwsh.exe -NoProfile -command "Get-AppxPackage -AllUsers | Select -Property Name | Sort -Property Name" > %DATA%\microsoft-store.txt
