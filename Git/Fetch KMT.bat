@echo off
 for /d %%s in (*) do (
echo KMT %%s
cd %~dp0%%s
git.exe fetch -v --progress "KMT"
echo.
echo.
)
pause