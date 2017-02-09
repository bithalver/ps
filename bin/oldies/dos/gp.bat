@echo off
set PATH=%PATH%;c:\Program Files\gs\gs8.13\bin;c:\Program Files\gs\gs8.13\lib;
call c:\meszi\ps\bin\gw %1 %2 %3 %4 %5 %6 %7 %8 %9
call "c:\Program Files\gs\gs8.13\lib\ps2pdf14.bat" %1.out.ps %1.pdf
del %1%.out.ps
