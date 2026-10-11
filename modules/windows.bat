@echo off
ver > %DATA%\06-windows.txt
gsudo cmd /c powershell.exe -NoProfile "Get-WindowsUpdate -IsInstalled | Format-Table -AutoSize -Wrap" > %DATA%\06b-windows-update.txt
