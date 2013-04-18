@echo off
%~d0
echo 当前盘符：%~d0
echo 当前盘符和路径：%~dp0
echo 当前批处理全路径：%~f0
echo 当前盘符和路径的短文件名格式：%~sdp0
echo 当前CMD默认目录：%cd%
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