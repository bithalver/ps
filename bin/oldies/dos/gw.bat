@echo off
set INC1="-fc:\meszi\ps\lib\general.ps"
set INC2="-fc:\meszi\ps\lib\pointop.ps"
set INC3="-fc:\meszi\ps\lib\planeop.ps"
set INC4="-fc:\meszi\ps\lib\netop.ps"
set INC5="-fc:\meszi\ps\lib\sysdef.ps"
set INC6="-fc:\meszi\ps\lib\draw.ps"
set INC7="-fc:\meszi\ps\lib\fileop.ps"
set INC8="-fc:\meszi\ps\lib\rgen_engine.ps"
set INC9="-fc:\meszi\ps\lib\qsort.ps"

set fn=%1.meszi

"c:\Program Files\gs\gs8.13\bin\gswin32c.exe" -q -sDEVICE=nullpage -sOutputFile=/dev/null -dWINDOWS=true -dwtf=true -scurrentdate="date_time" -smy_file_name=%1 %INC1% %INC2% %INC3% %INC4% %INC5% %INC6% %INC7% %INC8% %INC9% -- %fn% %2 %3 %4 %5 %6 %7 %8 %9
