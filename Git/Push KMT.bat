@echo off
 for /d %%s in (*) do (
echo KMT %%s
cd %~dp0%%s
git.exe push --all  --progress  "KMT"
git.exe push --tags --progress  "KMT" master:master
echo.
echo.
)
pause