@echo off
title Android AV Capture

echo Starting scrcpy recording to scrcpy-pipe.mkv...
start "" scrcpy --no-window --record scrcpy-pipe.mkv --record-format=mkv

echo Waiting for scrcpy to finish...

:wait_scrcpy
tasklist | find /i "scrcpy.exe" >nul
if %errorlevel%==0 (
    timeout /t 1 >nul
    goto wait_scrcpy
)

echo scrcpy has exited. Starting FFmpeg remux...
ffmpeg -i scrcpy-pipe.mkv -c:v copy -c:a aac output.mp4
move .\output.mp4 ..\finished_videos

echo Deleting old capture file from scrcpy...
del scrcpy-pipe.mkv 2>nul

echo Done!
pause
