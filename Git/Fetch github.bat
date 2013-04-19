@echo off
 for /d %%s in (*) do (
echo %%s
cd %~dp0%%s
git.exe fetch -v --progress "github"
echo.
echo.
)
pause