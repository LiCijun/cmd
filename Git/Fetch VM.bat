@echo off
 for /d %%s in (*) do (
echo VM %%s
cd %~dp0%%s
git.exe fetch -v --progress "VM"
echo.
echo.
)
pause