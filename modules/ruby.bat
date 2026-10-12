@echo off
ruby -v > %DATA%\ruby.txt
cmd /c gem -v > %DATA%\gem.txt
cmd /c gem environment > %DATA%\gem-environment.txt
cmd /c gem list > %DATA%\gem-l.txt
