# Hugo Development Server Script
# This script starts the Hugo development server

Write-Host "Starting Hugo development server..." -ForegroundColor Green
Write-Host "Server will be available at: http://localhost:1313" -ForegroundColor Cyan
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
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

# Start Hugo server with drafts enabled
hugo server -D --bind 0.0.0.0

