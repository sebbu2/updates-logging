@echo off
rustup --version > %DATA%\rustup.txt 2>&1
rustup toolchain list > %DATA%\rustup-toolchains.txt
rustup component list --installed >> %DATA%\rustup-components.txt
