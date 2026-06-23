@echo off
REM ============================================================
REM  Publish the latest portfolio to https://thirayume.github.io
REM  1) Edit the master Excel, run cv_build\build_all.bat
REM  2) Then double-click THIS file to push the update live.
REM ============================================================
cd /d "%~dp0"
echo Publishing to https://thirayume.github.io ...
git add -A
git commit -m "Update portfolio %date% %time%"
if errorlevel 1 echo (nothing new to commit)
git push origin main
echo.
echo Done. GitHub Pages will rebuild in ~1 minute:
echo   https://thirayume.github.io/
echo.
pause
