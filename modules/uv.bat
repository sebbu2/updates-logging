@echo off
uv --version > %DATA%\20-uv.txt
uv python list > %DATA%\20a-uv.txt
uv tool list > %DATA%\20b-uv.txt 2>&1
uv pip list > %DATA%\20c-uv.txt 2>&1
