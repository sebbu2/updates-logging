@echo off
wsl --version > %DATA%\wsl.txt
type %DATA%\wsl.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\wsl.txt
wsl -l -v > %DATA%\wsl-l.txt
type %DATA%\wsl-l.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\wsl-l.txt
wsl -l -o > %DATA%\wsl-l-o.txt
type %DATA%\wsl-l-o.txt | iconv -t UTF-8 -f UTF-16LE > a.txt && mv a.txt %DATA%\wsl-l-o.txt
wslc --version > %DATA%\wslc.txt
wslc info > %DATA%\wslc-info.txt
wslc images > %DATA%\wslc-images.txt
wslc container list > %DATA%\wslc-containers.txt
wslc system info > %DATA%\wslc-system-info.txt
wslc stats > %DATA%\wslc-stats.txt
