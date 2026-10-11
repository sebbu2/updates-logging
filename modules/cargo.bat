@echo off
cargo --version > %DATA%\11-cargo.txt
cargo install --list > %DATA%\11b-cargo.txt
