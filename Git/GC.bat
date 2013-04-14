@echo off
 for /d %%s in (*) do (
echo %%s
cd %%s
git.exe gc --auto
cd ..
echo.
)
pause