@echo off
 for /d %%s in (*) do (
echo %%s
cd %%s
git.exe fetch -v --progress "VM"
cd ..
echo.
)
pause