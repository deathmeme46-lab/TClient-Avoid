@echo off
REM Quick build script for TClient
REM Double-click this file to build

echo ========================================
echo   TClient Quick Build
echo ========================================
echo.

REM Run the PowerShell script
powershell -ExecutionPolicy Bypass -File "build.ps1"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Press any key to run TClient...
    pause >nul
    cd build\Release
    start TClient.exe
) else (
    echo.
    echo Build failed! Check the errors above.
    pause
)
