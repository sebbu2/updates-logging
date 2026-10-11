@echo off
rem set PY1=C:\dev\Python38\python.exe
set PY1=C:\Users\sebbu\AppData\Local\Python\pythoncore-3.12-64\python.exe
rem set PY2=C:\Users\sebbu\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\python.exe
rem set PY2=C:\Users\sebbu\AppData\Local\Python\bin\python.exe
set PY2=C:\Users\sebbu\AppData\Local\Python\pythoncore-3.14-64\python.exe
IF EXIST "%PY1" (
	%PY1% -m pip --version | dos2unix -q > %DATA%\16a-pipv.txt
	%PY1% -m pip list --user pip > %DATA%\16a-pip-lu.txt
	%PY1% -m pip list > %DATA%\16a-pip-l.txt
)
IF EXIST "%PY2" (
	%PY2% -m pip --version | dos2unix -q > %DATA%\16b-pipv.txt
	%PY2% -m pip list --user pip > %DATA%\16b-pip-lu.txt
	%PY2% -m pip list > %DATA%\16b-pip-l.txt
)
