# system_cleanup_organizer.ps1
# Author: GPT
# Purpose: Organize files in Downloads folder and optionally delete old files

# Set your Downloads path
$downloads = "$env:USERPROFILE\Downloads"

# Set file categories
$categories = @{
    "Documents" = @(".pdf", ".docx", ".txt", ".xlsx", ".pptx")
    "Images"    = @(".png", ".jpg", ".jpeg", ".gif", ".bmp", ".avif")
    "Videos"    = @(".mp4", ".mkv", ".mov", ".avi")
    "Archives"  = @(".zip", ".rar", ".7z", ".tar", ".gz")
    "Programs"  = @(".exe", ".msi")
}

# Create folders if they don't exist
foreach ($folder in $categories.Keys) {
    $path = Join-Path $downloads $folder
    if (-not (Test-Path $path)) { New-Item -ItemType Directory -Path $path | Out-Null }
}
$others = Join-Path $downloads "Others"
if (-not (Test-Path $others)) { New-Item -ItemType Directory -Path $others | Out-Null }

# Move files based on extension
Get-ChildItem -Path $downloads -File | ForEach-Object {
    $fileMoved = $false
    foreach ($category in $categories.Keys) {
        if ($categories[$category] -contains $_.Extension.ToLower()) {
            Move-Item $_.FullName -Destination (Join-Path $downloads $category) -Force
            $fileMoved = $true
            break
        }
    }
    if (-not $fileMoved) {
        Move-Item $_.FullName -Destination $others -Force
    }
}

# Optional: Delete files older than 180 days (6 months)
# Get-ChildItem -Path $downloads -File -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-180) } | Remove-Item -Force

Write-Output "Downloads folder organized successfully!"
