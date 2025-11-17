# Hugo Build Script for Production
# This script builds the static site for deployment

Write-Host "Building Hugo site for production..." -ForegroundColor Green
Write-Host ""

# Check if Hugo is installed
$hugoVersion = hugo version 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: Hugo is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Hugo from: https://gohugo.io/getting-started/installing/" -ForegroundColor Yellow
    exit 1
}

Write-Host "Hugo version: $hugoVersion" -ForegroundColor Gray
Write-Host ""

# Clean previous build
if (Test-Path "public") {
    Write-Host "Cleaning previous build..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force "public"
}

# Build the site
Write-Host "Building static site..." -ForegroundColor Cyan
hugo --minify

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "Build completed successfully!" -ForegroundColor Green
    Write-Host "Static files are in the 'public' directory" -ForegroundColor Cyan
    Write-Host "You can deploy the 'public' folder to any web hosting service" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "Build failed. Please check the errors above." -ForegroundColor Red
    exit 1
}

