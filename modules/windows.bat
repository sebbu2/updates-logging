@echo off
ver > %DATA%\windows.txt
gsudo cmd /c powershell.exe -NoProfile "Get-WindowsUpdate -IsInstalled | Format-Table -AutoSize -Wrap" > %DATA%\windows-update.txt
