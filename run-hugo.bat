@echo off
REM Hugo Development Server Script for Windows
REM This script starts the Hugo development server

echo Starting Hugo development server...
echo Server will be available at: http://localhost:1313
echo Press Ctrl+C to stop the server
echo.

REM Check if Hugo is installed
hugo version >nul 2>&1
if errorlevel 1 (
    echo Error: Hugo is not installed or not in PATH
    echo Please install Hugo from: https://gohugo.io/getting-started/installing/
    pause
    exit /b 1
)

REM Start Hugo server with drafts enabled
hugo server -D --bind 0.0.0.0

pause

