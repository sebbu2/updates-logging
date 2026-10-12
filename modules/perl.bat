@echo off
perl --version > %DATA%\perl.txt
perl -V > %DATA%\perl-V.txt
cmd /c cpan -v > %DATA%\cpan.txt
cmd /c cpan -V > %DATA%\cpan-V.txt
cmd /c cpan -l > %DATA%\cpan-l.txt
