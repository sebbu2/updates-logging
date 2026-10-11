@echo off
wsl --version > %DATA%\02-wsl.txt
type %DATA%\02-wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\02-wsl.txt
wsl -l -v > %DATA%\02b-wsl.txt
type %DATA%\02b-wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\02b-wsl.txt
wsl -l -o > %DATA%\02b-wsl-o.txt
type %DATA%\02b-wsl-o.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\02b-wsl-o.txt
wslc --version > %DATA%\02c-wslc.txt
wslc info > %DATA%\02d-wslc-info.txt
wslc images > %DATA%\02e-wslc-images.txt
wslc container list > %DATA%\02f-wslc-containers.txt
wslc system info > %DATA%\02g-wslc-systeminfo.txt
wslc stats > %DATA%\02h-wslc-stats.txt
