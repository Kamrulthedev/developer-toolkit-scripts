$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"

$appsTheme = Get-ItemProperty -Path $regPath -Name AppsUseLightTheme
$systemTheme = Get-ItemProperty -Path $regPath -Name SystemUsesLightTheme

$newValue = if ($appsTheme.AppsUseLightTheme -eq 1) { 0 } else { 1 }

Set-ItemProperty -Path $regPath -Name AppsUseLightTheme -Value $newValue
Set-ItemProperty -Path $regPath -Name SystemUsesLightTheme -Value $newValue

$mode = if ($newValue -eq 0) { "🌙 Dark Mode Enabled" } else { "☀️ Light Mode Enabled" }
Write-Host "`n$mode" -ForegroundColor Cyan
