@echo off
cmd /c flutter --version > %DATA%\flutter.txt
cmd /c flutter channel > %DATA%\flutter-channels.txt
cmd /c flutter config > %DATA%\flutter-config.txt
cmd /c flutter custom-devices list > %DATA%\flutter-custom-devices.txt 2>&1
cmd /c flutter devices list > %DATA%\flutter-devices.txt
cmd /c flutter emulators > %DATA%\flutter-emulators.txt
cmd /c flutter doctor > %DATA%\flutter-doctor.txt
cmd /c flutter doctor -v > %DATA%\flutter-doctor-v.txt
cmd /c flutter doctor -vv > %DATA%\flutter-doctor-vv.txt
