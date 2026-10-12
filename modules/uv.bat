@echo off
uv --version > %DATA%\uv.txt
uv python list > %DATA%\uv-python.txt
uv tool list > %DATA%\uv-tools.txt 2>&1
uv pip list > %DATA%\uv-l.txt 2>&1
