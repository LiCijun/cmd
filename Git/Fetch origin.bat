@echo off
 for /d %%s in (*) do (
echo %%s
cd %%s
git.exe fetch -v --progress "origin"
cd ..
echo.
)
pause