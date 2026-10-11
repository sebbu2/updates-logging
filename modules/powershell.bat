@echo off
powershell $PSVersionTable > %DATA%\21-powershell.txt
powershell Get-Module > %DATA%\21a-powershell.txt
pwsh -command $PSVersionTable > %DATA%\21b-pwsh.txt
pwsh -command Get-Module > %DATA%\21c-pwsh.txt
