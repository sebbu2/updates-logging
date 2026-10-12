@echo off
go version > %DATA%\go.txt
go-global-update --dry-run > %DATA%\go-l.txt
