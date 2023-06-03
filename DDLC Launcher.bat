@echo off
title DDLC Launcher v1.0
color 0f
echo Warning: Flashing color warning! If you have epilepsy, it is recommended to terminate this script now by clicking the X on this window. Press any key to begin DDLC Launcher!
pause >nul
color 04
echo Don't say I didn't warn you...
timeout 2 >nul

:menu
color cf
color af
color 9f
color 07
cls
color 4f
color 2f
color 1f
color 07
echo Welcome to DDLC Launcher, an unofficial launcher designed to make running Doki Doki Literature Club less of a hassle and more of a quick and simple task.
echo.
echo What would you like to do?
echo 1) Run DDLC
echo 2) Check for DDLC Launcher updates
echo 3) Credits
echo 4) Exit
echo.

set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" (
    call :run_ddlc
) else if "%choice%"=="2" (
    call :check_updates
) else if "%choice%"=="3" (
    call :run_credits
) else if "%choice%"=="4" (
    exit /b
) else (
    echo A benign error occurred: That is not a valid option.
    timeout 2 >nul
    goto :menu
)

:run_ddlc
echo Running DDLC; a script will run so that way detection of DDLC.exe will initiate...
cscript //nologo "ddlc.vbs"
goto :menu

:check_updates
echo Opening DDLC Launcher Github page...
start https://github.com/macecailiscool/DDLC-Launcher/releases/tag/Release
goto :menu

:run_credits
echo Running credits...
timeout 2 >nul
echo Programming done by Mace
timeout 1 >nul
echo Idea by Mace
timeout 1 >nul
echo Doki Doki Literature Club by Team Salvato
timeout 1 >nul
echo This program is in no way affiliated with Team Salvato nor Dan Salvato. This DDLC Launcher program is a fan project made
echo by Mace Cail.
timeout 4 >nul
goto :menu
