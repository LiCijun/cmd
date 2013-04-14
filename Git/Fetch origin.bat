@echo off
 for /d %%s in (*) do (
echo %%s
cd %%s
git.exe fetch -v --progress  "origin"
git.exe fetch -v --progress --tags  "origin"
cd ..
echo.
)
pause