@echo off
%~d0
echo ��ǰ�̷���%~d0
echo ��ǰ�̷���·����%~dp0
echo ��ǰ������ȫ·����%~f0
echo ��ǰ�̷���·���Ķ��ļ�����ʽ��%~sdp0
echo ��ǰCMDĬ��Ŀ¼��%cd%
echo.
echo.
 for /d %%s in (*) do (
echo.
echo %~dp0%%s
cd %~dp0%%s
cls
dir
rem git.exe checkout   -b master remotes/origin/master
echo.
pause
)
pause