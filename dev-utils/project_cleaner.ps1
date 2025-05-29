# PowerShell
Get-ChildItem -Recurse -Force | Where-Object {
    $_.PSIsContainer -and ($_.Name -in @('node_modules', '.next', 'dist', '.parcel-cache', 'coverage', '.pytest_cache'))
} | ForEach-Object {
    Write-Host "Deleting $($_.FullName)" -ForegroundColor Yellow
    Remove-Item $_.FullName -Recurse -Force
}
