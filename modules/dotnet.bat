@echo off
dotnet --info > %DATA%\10-dotnet.txt
dotnet-tools-outdated --outPkgRegardlessState -f json > %DATA%\10b-dotnet.txt
