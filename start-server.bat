@echo off
echo ========================================
echo Starting Talk2Sign Server
echo ========================================
echo.
echo Current directory: %CD%
echo.
echo Checking for index.html...
if exist index.html (
    echo [OK] index.html found!
) else (
    echo [ERROR] index.html not found!
    echo Please make sure you're in the project root directory.
    pause
    exit
)
echo.
echo Starting server on http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8000

