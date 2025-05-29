$desktop = [Environment]::GetFolderPath("Desktop")

$types = @{
    "Images" = "*.png","*.jpg","*.jpeg","*.gif"
    "Docs"   = "*.docx","*.pdf","*.txt"
    "Zips"   = "*.zip","*.rar"
}

foreach ($folder in $types.Keys) {
    $path = Join-Path $desktop $folder
    if (!(Test-Path $path)) { New-Item -ItemType Directory -Path $path | Out-Null }

    foreach ($ext in $types[$folder]) {
        Get-ChildItem -Path $desktop -Filter $ext -Recurse -ErrorAction SilentlyContinue | Move-Item -Destination $path -Force
    }
}
Write-Host "✅ Desktop organized successfully."
