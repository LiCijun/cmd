@echo off
 for /d %%s in (*) do (
echo origin %%s
cd %~dp0%%s
git.exe fetch -v --progress "origin"
echo.
echo.
)
pause