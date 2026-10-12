@echo off
rem set PY38=C:\dev\Python38\python.exe
set PY312=C:\Users\sebbu\AppData\Local\Python\pythoncore-3.12-64\python.exe
rem set PY312w=C:\Users\sebbu\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\python.exe
rem set PYL=C:\Users\sebbu\AppData\Local\Python\bin\python.exe
set PY314=C:\Users\sebbu\AppData\Local\Python\pythoncore-3.14-64\python.exe
IF EXIST "%PY312%" (
	%PY312% -m pip --version | dos2unix -q > %DATA%\pip312.txt
	%PY312% -m pip list --user pip > %DATA%\pip312-lu.txt
	%PY312% -m pip list > %DATA%\pip312-l.txt
)
IF EXIST "%PY314%" (
	%PY314% -m pip --version | dos2unix -q > %DATA%\pip314.txt
	%PY314% -m pip list --user pip > %DATA%\pip314-lu.txt
	%PY314% -m pip list > %DATA%\pip314-l.txt
)
