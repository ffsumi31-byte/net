@echo off
title OBS Overlay Local Host
echo ====================================================
echo  OBS Studio Local Browser Source Server
echo ====================================================
echo.
echo Starting local web server at:
echo    http://localhost:8080/?obs=true
echo.
echo In OBS Studio:
echo  1. Add Source -^> Browser Source
echo  2. Enter URL: http://localhost:8080/?obs=true
echo  3. Set Width: 1080, Height: 1920 (or 1920x1080)
echo.
echo Press Ctrl+C anytime to stop.
echo ====================================================
python -m http.server 8080
pause