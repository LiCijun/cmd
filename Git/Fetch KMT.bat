@echo off
 for /d %%s in (*) do (
echo %%s
cd %~dp0%%s
git.exe fetch -v --progress "KMT"
echo.
echo.
)
pause