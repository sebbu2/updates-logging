@echo off
powershell $PSVersionTable > %DATA%\powershell.txt
powershell Get-Module > %DATA%\powershell-l.txt
pwsh -command $PSVersionTable > %DATA%\pwsh.txt
pwsh -command Get-Module > %DATA%\pwsh-l.txt
