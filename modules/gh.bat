@echo off
gh --version > %DATA%\gh.txt
gh extensions list > %DATA%\gh-extensions.txt
