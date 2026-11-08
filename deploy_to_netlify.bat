@echo off
title Deploy OBS Overlay to Netlify
cd /d "%~dp0"
echo ====================================================
echo    Deploying OBS Overlay to Netlify
echo ====================================================
echo.
echo Option 1: Instant Drag ^& Drop (No Login required):
echo   - Open: https://app.netlify.com/drop
echo   - Drag and drop this folder: "%~dp0"
echo.
echo Option 2: Deploying via Netlify CLI...
echo.
npx netlify deploy --dir=. --prod
pause