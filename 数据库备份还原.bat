@echo off

:input2
set /p filename=�������ļ���:
if /i "%filename%"=="" goto :input2

 
:input
set /p cmd=��������b,��ԭ����r:
if /i "%cmd%"=="b" goto :backup
if /i "%cmd%"=="r" goto :restore
goto :input

:backup
osql -S localhost -U sa -P 123456 -q   "BACKUP  DATABASE [HHU] TO  DISK = N'%filename%' WITH NOFORMAT, INIT,  NAME = N'HHU-���� ���ݿ� ����', SKIP, NOREWIND, NOUNLOAD,  STATS = 10"

goto :end

:restore
osql -S localhost -U sa -P 123456 -q   "RESTORE DATABASE [HHU] FROM  DISK = N'%filename%' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10"
:end
 
@echo on