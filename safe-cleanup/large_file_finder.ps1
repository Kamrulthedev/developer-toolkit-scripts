$downloads = "$env:USERPROFILE\Downloads"
$largeFiles = Get-ChildItem -Path $downloads -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.Length -gt 1GB }
$largeFiles | Out-File -FilePath "$env:USERPROFILE\Desktop\gb_files.txt"
Write-Host "Done! Check Desktop for gb_files.txt"
