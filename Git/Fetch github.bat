@echo off
 for /d %%s in (*) do (
echo %%s
cd %%s
git.exe fetch -v --progress "github"
cd ..
echo.
)
pause