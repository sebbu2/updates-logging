@echo off
cargo --version > %DATA%\cargo.txt
cargo install --list > %DATA%\cargo-l.txt
