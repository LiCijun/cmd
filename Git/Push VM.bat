@echo off
 for /d %%s in (*) do (
echo VM  %%s
cd %~dp0%%s
git.exe push --all --progress  "VM"
git.exe push --tags --progress  "VM" master:master
echo.
echo.
)
pause