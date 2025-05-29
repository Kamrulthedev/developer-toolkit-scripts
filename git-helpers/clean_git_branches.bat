@echo off
echo Deleting merged branches...
git branch --merged | findstr /V "main" | findstr /V "master" | for /F "tokens=*" %%i in ('more') do git branch -d %%i
pause
