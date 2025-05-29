@echo off
set /p PORT=Enter port to kill: 
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :%PORT%') do (
    taskkill /F /PID %%a
)
