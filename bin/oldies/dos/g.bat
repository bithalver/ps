@echo off
call c:\meszi\ps\bin\gw %1 %2 %3 %4 %5 %6 %7 %8 %9
call "C:\Program Files\Ghostgum\gsview\gsview32.exe" %1.out.ps
del %1.out.ps
