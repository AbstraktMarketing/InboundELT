@echo off
echo.
echo ========================================
echo   Inbound Dashboard Data Updater
echo ========================================
echo.

cd /d "%~dp0scripts"

python update-data.py

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Python script failed.
    echo Make sure Python is installed and openpyxl is available.
    echo Run: pip install openpyxl
    pause
    exit /b 1
)

echo.
echo Dashboard updated! Refresh your browser to see changes.
echo.
pause
