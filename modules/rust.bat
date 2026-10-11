@echo off
rustup --version > %DATA%\09-rustup.txt 2>&1
rustup toolchain list > %DATA%\09b-rustup.txt
rustup component list --installed >> %DATA%\09b-rustup.txt
