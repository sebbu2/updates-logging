@echo off
@where conda >NUL 2>&1
IF %ERRORLEVEL%==0 (
	cmd /c conda --version > %DATA%\15-conda.txt
	cmd /c conda info > %DATA%\15a-conda.txt
	cmd /c conda list -n base > %DATA%\15b-conda.txt
)
