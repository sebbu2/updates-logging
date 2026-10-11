@echo off
go version > %DATA%\12-go.txt
go-global-update --dry-run > %DATA%\12b-go.txt
