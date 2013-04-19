@echo off
 for /d %%s in (*) do (
echo %%s
cd %~dp0%%s
git.exe push --all --progress  "origin"
git.exe push --tags --progress  "origin" master:master
echo.
echo.
)
pause