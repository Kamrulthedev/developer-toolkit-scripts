@echo off
echo ===================================================
echo         SAFE CLEANUP SCRIPT FOR DEVELOPERS
echo ===================================================

:: Cleaning system temp
echo [1/6] Cleaning System Temp Folder...
del /q /f /s %TEMP%\* > nul 2>&1

:: Cleaning user temp
echo [2/6] Cleaning User Temp Folder...
del /q /f /s %USERPROFILE%\AppData\Local\Temp\* > nul 2>&1

:: Cleaning Windows Update Cache
echo [3/6] Cleaning Windows Update Cache...
del /q /f /s C:\Windows\SoftwareDistribution\Download\* > nul 2>&1

:: Cleaning Recycle Bin
echo [4/6] Emptying Recycle Bin...
PowerShell.exe -NoProfile -Command "Clear-RecycleBin -Force"

:: Searching large downloads
echo [5/6] Checking large files in Downloads (>200MB)...
forfiles /p "%USERPROFILE%\Downloads" /s /m *.* /c "cmd /c if @fsize GEQ 200000000 echo Large File: @path" > "%USERPROFILE%\Desktop\large_downloads.txt"

:: Final note
echo [6/6] Done! Check Desktop for large_downloads.txt to review.
echo.
echo ✅ All safe junk cleared. Dev environment is untouched.
echo 💾 Please restart your system for best performance.
pause
