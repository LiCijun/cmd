@echo off
:input
set /p filename=Oracleֹͣ��������q,������������:
if /i "%filename%"=="q" goto :stop
goto :start

:start
net start OracleServiceLIDB
net start OracleVssWriterLIDB
net start OracleOraDb11g_home1TNSListener
rem net start OracleDBConsolelidb
goto :end

:stop
rem net stop	OracleDBConsolelidb
net stop	OracleOraDb11g_home1TNSListener
net stop	OracleVssWriterLIDB
net stop	OracleServiceLIDB
goto :end
:end
pause