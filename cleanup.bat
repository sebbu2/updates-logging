@echo off
cmd /c scoop reset diffutils dos2unix gawk grep innounp patch sed vim wget innounp >NUL
cmd /c scoop cleanup -k -a
cmd /c gem cleanup
cmd /c mv-lnk.bat
