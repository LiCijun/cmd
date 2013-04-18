@echo off
 for /d %%s in (*) do (
echo %%s
cd %%s
git.exe push --all --progress  "KMT"
cd ..
echo.
)
pause