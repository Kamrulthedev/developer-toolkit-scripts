$WshShell = New-Object -ComObject WScript.Shell
$desktop = [Environment]::GetFolderPath("Desktop")

$apps = @(
    @{ Name = "VS Code"; Path = "C:\Users\$env:USERNAME\AppData\Local\Programs\Microsoft VS Code\Code.exe" },
    @{ Name = "Git Bash"; Path = "C:\Program Files\Git\git-bash.exe" },
    @{ Name = "Postman"; Path = "C:\Users\$env:USERNAME\AppData\Local\Postman\Postman.exe" }
)

foreach ($app in $apps) {
    $shortcut = $WshShell.CreateShortcut("$desktop\$($app.Name).lnk")
    $shortcut.TargetPath = $app.Path
    $shortcut.IconLocation = $app.Path
    $shortcut.Save()
    Write-Host "✅ Shortcut created for: $($app.Name)" -ForegroundColor Green
}

Write-Host "`n📂 All shortcuts added to Desktop." -ForegroundColor Cyan
