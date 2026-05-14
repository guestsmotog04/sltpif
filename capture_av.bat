@echo off
title SLTPIF - Audio/Video Capture (v1.01)

echo ============================================
echo      		SLTPIF v1.01
echo ============================================
echo.
echo Changelog here: https://www.github.com/guestsmotog04/sltpif/blob/main/changelog.txt
echo.

if not exist "%~dp0\..\finished videos" mkdir "%~dp0\..\finished videos"

echo Launching scrcpy...
echo Close scrcpy when you want to stop recording.
echo.

"%~dp0\scrcpy.exe" --record temp.mkv

echo.
echo scrcpy closed. Finalizing...
echo.

timeout /t 1 >nul

for /f "tokens=1-3 delims=/: " %%a in ("%date%") do set d=%%a-%%b-%%c
for /f "tokens=1-3 delims=: " %%a in ("%time%") do set t=%%a-%%b-%%c

set fallback=SLTPIF_%d%_%t%.mp4

echo Remuxing MKV -> MP4...
"%~dp0\ffmpeg.exe" -y -i temp.mkv -c copy "%fallback%" >nul 2>&1

move "%fallback%" "%~dp0\finished videos\" >nul
del temp.mkv >nul 2>&1

echo.
echo ============================================
echo        Recording Complete!
echo Saved to: finished videos\
echo ============================================
echo.
pause
exit /b
