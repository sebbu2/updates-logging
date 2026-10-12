@echo off
dotnet --info > %DATA%\dotnet.txt
dotnet-tools-outdated --outPkgRegardlessState -f json > %DATA%\dotnet-l.txt
