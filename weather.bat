@echo off
title Weather Checker

:menu
echo Select a Region:
echo 1. Kozhikode
echo 2. Kochi
echo 3. kattapana
echo Enter your choice (1-3):

set /p choice=

if "%choice%"=="1" set region=Kozhikode
if "%choice%"=="2" set region=Kochi
if "%choice%"=="3" set region=kattapana


if not defined region (
    echo Invalid choice, please try again.
    goto menu
)

echo Fetching weather information for %region%...
curl wttr.in/%region%

pause
