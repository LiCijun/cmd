@echo off
 for /d %%s in (*) do (
echo github %%s
cd %~dp0%%s
git.exe push --all --progress  "github"
git.exe push --tags --progress  "github" master:master
echo.
echo.
)
pause