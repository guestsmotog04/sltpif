@echo off
title Android Capture Launcher

cd "scrcpy stuff"

echo Launching AV capture window...
start "AV Capture" cmd /k capture_av.bat

echo All capture processes launched.
echo Close this window if you want; the others will keep running.
