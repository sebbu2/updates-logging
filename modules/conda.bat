@echo off
@where conda >NUL 2>&1
IF %ERRORLEVEL%==0 (
	cmd /c conda --version > %DATA%\conda.txt
	cmd /c conda info > %DATA%\conda-info.txt
	cmd /c conda list -n base > %DATA%\conda-l.txt
)
