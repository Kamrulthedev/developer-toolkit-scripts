Write-Host "==================================================="
Write-Host "        SAFE CLEANUP SCRIPT FOR DEVELOPERS"
Write-Host "==================================================="

Write-Host "[1/6] Cleaning System Temp Folder..."
Remove-Item -Path "$env:SystemRoot\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "[2/6] Cleaning User Temp Folder..."
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "[3/6] Cleaning Windows Update Cache..."
Stop-Service wuauserv -Force
Remove-Item -Path "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
Start-Service wuauserv

Write-Host "[4/6] Emptying Recycle Bin..."
try {
  Clear-RecycleBin -Force -ErrorAction Stop
} catch {
  Write-Host "Recycle Bin not found or already empty."
}

Write-Host "[5/6] Checking for large downloads (>100MB)..."
$downloads = "$env:USERPROFILE\Downloads"
$largeFiles = Get-ChildItem -Path $downloads -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.Length -gt 100MB }
$largeFiles | Out-File -FilePath "$env:USERPROFILE\Desktop\large_downloads.txt"

Write-Host "[6/6] Done! Check Desktop for large_downloads.txt to review."
Write-Host "✓ All safe junk cleared. Dev environment is untouched."
Write-Host "🔁 Please restart your system for best performance."
