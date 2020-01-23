@ECHO OFF
SET /P ip=Please enter Server ip: 
IF "%ip%"=="" GOTO Error
%USERPROFILE%\Downloads\iperf-3.1.3-win64\iperf-3.1.3-win64\iperf3.exe -P 6 -c %ip%
pause
:Error
ECHO You did not enter Server IP! Good Luck
