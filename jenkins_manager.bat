@echo off
title Jenkins Service Manager (Simplified)
echo ===============================
echo Please enter the Jenkins path (e.g., C:\Program Files\Jenkins):
set /p jenkins_path=Path: 
echo Debug: Jenkins Path is %jenkins_path%
if not exist "%jenkins_path%\jenkins.exe" (
    echo Debug: jenkins.exe not found in the specified path.
    pause
    exit /b
)

echo Debug: jenkins.exe found. Proceeding...
cd /d "%jenkins_path%" || (
    echo Debug: Failed to navigate to Jenkins directory.
    pause
    exit /b
)

echo ===============================
echo [1] Start Jenkins
echo [2] Stop Jenkins
echo [3] Restart Jenkins
echo [4] Exit
echo ===============================
set /p choice=Select an option (1-4): 

if "%choice%"=="1" (
    echo Starting Jenkins...
    .\jenkins.exe start
    pause
    exit
) else if "%choice%"=="2" (
    echo Stopping Jenkins...
    .\jenkins.exe stop
    pause
    exit
) else if "%choice%"=="3" (
    echo Restarting Jenkins...
    .\jenkins.exe restart
    pause
    exit
) else (
    echo Exiting.
    exit
)
