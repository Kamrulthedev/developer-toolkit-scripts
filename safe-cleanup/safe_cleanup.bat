@echo off
title SAFE CLEANUP FOR DEVELOPERS
echo Running safe cleanup script...
PowerShell -ExecutionPolicy Bypass -File "%~dp0safe_cleanup.ps1"
pause
