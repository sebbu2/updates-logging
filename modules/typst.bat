@echo off
typst --version > %DATA%\typst.txt
typst info > %DATA%\typst-info.txt 2>&1
