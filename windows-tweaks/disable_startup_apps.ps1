$excluded = @('Windows Security', 'OneDrive', 'Windows Defender')  # Essential apps

$startupApps = Get-CimInstance -Namespace root\cimv2\mdm\dmmap `
  -ClassName MDM_StartupApp

foreach ($app in $startupApps) {
    $appName = $app.InstanceID.Split('\\')[-1]
    if ($excluded -notcontains $appName) {
        Write-Host "Disabling: $appName" -ForegroundColor Yellow
        try {
            $null = Invoke-CimMethod -InputObject $app -MethodName Disable
            Write-Host "Disabled: $appName" -ForegroundColor Green
        } catch {
            Write-Host "Failed to disable: $appName" -ForegroundColor Red
        }
    }
}

Write-Host "`n✅ Startup optimization complete!" -ForegroundColor Cyan
